import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/store_dto.dart';

class StoreODataClientContext extends ODataClientContext<StoreDto> {
  final Dio httpClient;

  StoreODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  StoreDto fromJson(Map<String, dynamic> json) => StoreDto.fromJson(json);

  @override
  ODataListResponse<StoreDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<StoreDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/store";

  List<StoreDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => StoreDto.fromJson(e)).toList();
  }
}
