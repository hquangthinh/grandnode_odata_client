import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';

abstract class ODataClientContext<T> {
  Dio httpClient;
  String _resourcePath;
  String _filter;
  String _orderby;
  String _expand;
  String _select;
  int _skip;
  int _top;
  bool _count;
  String _search;
  String _id;

  ODataClientContext({
    this.httpClient,
  });

  resource(String resourcePath) => this._resourcePath = resourcePath;

  filter(String filter) => this._filter = filter;

  select(String select) => this._select = select;

  expand(String expand) => this._expand = expand;

  search(String search) => this._search = search;

  orderBy(String orderBy) => this._orderby = orderBy;

  id(String id) => this._id = id;

  top(int top) {
    this._top = top;
    return this;
  }

  skip(int skip) => this._skip = skip;

  count() => this._count = true;

  /// Override this method to return resource path for current query context
  String getDefaultResourcePath();

  /// Override this method to transform json object to dto
  T fromJson(Map<String, dynamic> json);

  /// Override this method to trasnform json array to list of dto in query operation
  ODataListResponse<T> fromJsonArray(Map<String, dynamic> json);

  /// Execute query with current resource path and query options
  Future<ApiResultResponse<ODataListResponse<T>>> executeQuery() async {
    final resourcePathWithQueryOptions = buildResourcePathWithQueryOptions();
    ArgumentError.checkNotNull(
        resourcePathWithQueryOptions, 'resourcePathWithQueryOptions');
    return _executeQueryInternal(resourcePathWithQueryOptions);
  }

  /// Execute query with given resource path and query options parameter
  Future<ApiResultResponse<ODataListResponse<T>>> executeQueryWith(
      String queryOptions) async {
    ArgumentError.checkNotNull(queryOptions, 'queryOptions');
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    final resourcePathWithQueryOptions = "$_resourcePath?$queryOptions";
    return _executeQueryInternal(resourcePathWithQueryOptions);
  }

  /// Execute query to get single resource by key
  Future<ApiResultResponse<T>> executeQueryByKey() async {
    ArgumentError.checkNotNull(_id, 'id');
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');

    final resourcePathWithQueryOptions = "$_resourcePath('$_id')";

    try {
      final Response<Map<String, dynamic>> _result =
          await httpClient.request(resourcePathWithQueryOptions);
      final value = fromJson(_result.data);
      return Future.value(ApiResultResponse.success(value));
    } on Exception catch (e) {
      return _handleError(e);
    }
  }

  /// Create or update full entity. If update entity body payload need to set value for id field
  Future<ApiResultResponse<T>> createOrUpdateEntity(
      Map<String, dynamic> json) async {
    if (json == null)
      return Future.value(ApiResultResponse.fail("Object data is null"));

    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');

    try {
      final Response<Map<String, dynamic>> _result = await httpClient.post(
        _resourcePath,
        data: json,
      );
      final value = fromJson(_result.data);
      return Future.value(ApiResultResponse.success(value));
    } on Exception catch (e) {
      return _handleError(e);
    }
  }

  /// Update full entity by PUT method
  Future<ApiResultResponse<T>> updateEntity(Map<String, dynamic> json) async {
    if (json == null)
      return Future.value(ApiResultResponse.fail("Object data is null"));

    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    ArgumentError.checkNotNull(_id, 'id');
    final resourcePathWithId = "$_resourcePath('$_id')";
    try {
      final Response<Map<String, dynamic>> _result = await httpClient.put(
        resourcePathWithId,
        data: json,
      );
      final value = fromJson(_result.data);
      return Future.value(ApiResultResponse.success(value));
    } on Exception catch (e) {
      return _handleError(e);
    }
  }

  /// Update entity partially by PATCH
  Future<ApiResultResponse<String>> updatePartialEntity(
      Map<String, dynamic> json) async {
    if (json == null)
      return Future.value(ApiResultResponse.fail("Object data is null"));

    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    ArgumentError.checkNotNull(_id, 'id');
    final resourcePathWithId = "$_resourcePath('$_id')";
    try {
      await httpClient.patch(
        resourcePathWithId,
        data: json,
      );
      return Future.value(ApiResultResponse.success(_id));
    } on Exception catch (e) {
      return _handlePatchError(e);
    }
  }

  /// Delete entity
  Future<ApiResultResponse<String>> deleteEntity() async {
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    ArgumentError.checkNotNull(_id, 'id');
    final resourcePathWithId = "$_resourcePath('$_id')";
    return await _deleteEntityByKey(_id, resourcePathWithId);
  }

  Future<ApiResultResponse<String>> deleteEntityByKey(String key) async {
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    ArgumentError.checkNotNull(key, 'key');
    final resourcePathWithId = "$_resourcePath('$key')";
    return await _deleteEntityByKey(key, resourcePathWithId);
  }

  Future<ApiResultResponse<String>> _deleteEntityByKey(
      String key, String resourcePathWithId) async {
    try {
      await httpClient.delete(resourcePathWithId);
      return Future.value(ApiResultResponse.success(key));
    } on Exception catch (e) {
      return _handlePatchError(e);
    }
  }

  /// Execute an action with POST
  Future<ApiResultResponse<dynamic>> executeAction(
      String action, Map<String, dynamic> parameters) async {
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(_resourcePath, 'resourcePath');
    ArgumentError.checkNotNull(_id, 'id');
    ArgumentError.checkNotNull(action, 'action');
    final resourcePathWithAction = "$_resourcePath('$_id')/$action";
    try {
      await httpClient.post(resourcePathWithAction);
      return Future.value(ApiResultResponse.success(_id));
    } on Exception catch (e) {
      return _handlePatchError(e);
    }
  }

  String buildResourcePathWithQueryOptions() {
    if (stringIsNullOrEmpty(_resourcePath)) {
      _resourcePath = getDefaultResourcePath();
    }
    ArgumentError.checkNotNull(this._resourcePath, 'resourcePath');
    final query = Map<String, dynamic>();

    if (stringIsNotNullOrEmpty(this._filter)) {
      query.putIfAbsent("\$filter", () => "\$filter=$_filter");
    }

    if (stringIsNotNullOrEmpty(this._select)) {
      query.putIfAbsent("\$select", () => "\$select=$_select");
    }

    if (stringIsNotNullOrEmpty(this._expand)) {
      query.putIfAbsent("\$expand", () => "\$expand=$_expand");
    }

    if (stringIsNotNullOrEmpty(this._search)) {
      query.putIfAbsent("\$search", () => "\$search=$_search");
    }

    if (stringIsNotNullOrEmpty(this._orderby)) {
      query.putIfAbsent("\$orderby", () => "\$orderby=$_orderby");
    }

    if (this._top != null && this._top > 0) {
      query.putIfAbsent("\$top", () => "\$top=$_top");
    }

    if (this._skip != null && this._skip > 0) {
      query.putIfAbsent("\$skip", () => "\$skip=$_skip");
    }

    if (this._count != null && this._count) {
      query.putIfAbsent("\$count", () => "\$count=true");
    }

    final queryString = query.values.join("&");

    return "$_resourcePath?$queryString";
  }

  Future<ApiResultResponse<ODataListResponse<T>>> _executeQueryInternal(
      String resourcePathWithQueryOptions) async {
    try {
      final Response<Map<String, dynamic>> _result =
          await httpClient.request(resourcePathWithQueryOptions);
      final value = fromJsonArray(_result.data);
      return Future.value(ApiResultResponse.success(value));
    } on Exception catch (e) {
      return _handleQueryError(e);
    }
  }

  String _parseApiResponseError(dynamic errorMap) {
    if (errorMap == null) return "Unknown error";
    if (errorMap is String) return errorMap;
    if (errorMap is Map<String, dynamic>) {
      final errorCode = errorMap["error"]["code"] ?? "1000";
      final errorMessage = errorMap["error"]["message"];
      return "$errorCode: $errorMessage";
    }
    return "Unknown error";
  }

  Future<ApiResultResponse<ODataListResponse<T>>> _handleQueryError(
      Exception e) {
    if (e is DioError) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      print(e.error);
      if (e.response != null) {
        return Future.value(
            ApiResultResponse.fail(_parseApiResponseError(e.response.data)));
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        return Future.value(ApiResultResponse.fail(e.message));
      }
    }
    print(e);
    return Future.value(ApiResultResponse.fail(e.toString()));
  }

  Future<ApiResultResponse<T>> _handleError(Exception e) {
    if (e is DioError) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      print(e.error);
      if (e.response != null) {
        return Future.value(
            ApiResultResponse.fail(_parseApiResponseError(e.response.data)));
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        return Future.value(ApiResultResponse.fail(e.message));
      }
    }
    print(e);
    return Future.value(ApiResultResponse.fail(e.toString()));
  }

  Future<ApiResultResponse<String>> _handlePatchError(Exception e) {
    if (e is DioError) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      print(e.error);
      if (e.response != null) {
        return Future.value(
            ApiResultResponse.fail(_parseApiResponseError(e.response.data)));
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        return Future.value(ApiResultResponse.fail(e.message));
      }
    }
    print(e);
    return Future.value(ApiResultResponse.fail(e.toString()));
  }
}

bool stringIsNotNullOrEmpty(String s) => s != null && s.isNotEmpty;

bool stringIsNullOrEmpty(String s) => s == null || s.isEmpty;
