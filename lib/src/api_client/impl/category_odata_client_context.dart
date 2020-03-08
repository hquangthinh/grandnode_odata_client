import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/category_dto.dart';

class CategoryODataClientContext extends ODataClientContext<CategoryDto> {
  final Dio httpClient;

  CategoryODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  CategoryDto fromJson(Map<String, dynamic> json) => CategoryDto.fromJson(json);

  @override
  ODataListResponse<CategoryDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<CategoryDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/category";

  List<CategoryDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CategoryDto.fromJson(e)).toList();
  }
}
