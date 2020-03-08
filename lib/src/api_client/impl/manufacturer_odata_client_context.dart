import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/manufacturer_dto.dart';

class ManufacturerODataClientContext
    extends ODataClientContext<ManufacturerDto> {
  final Dio httpClient;

  ManufacturerODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  ManufacturerDto fromJson(Map<String, dynamic> json) =>
      ManufacturerDto.fromJson(json);

  @override
  ODataListResponse<ManufacturerDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<ManufacturerDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/manufacturer";

  List<ManufacturerDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ManufacturerDto.fromJson(e)).toList();
  }
}
