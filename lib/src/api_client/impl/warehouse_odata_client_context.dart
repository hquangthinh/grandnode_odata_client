import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/shipping/warehouse_dto.dart';

class WarehouseODataClientContext extends ODataClientContext<WarehouseDto> {
  final Dio httpClient;

  WarehouseODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  WarehouseDto fromJson(Map<String, dynamic> json) =>
      WarehouseDto.fromJson(json);

  @override
  ODataListResponse<WarehouseDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<WarehouseDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/warehouse";

  List<WarehouseDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => WarehouseDto.fromJson(e)).toList();
  }
}
