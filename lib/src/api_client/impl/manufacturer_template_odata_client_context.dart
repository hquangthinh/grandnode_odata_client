import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/manufacturer_template_dto.dart';

class ManufacturerTemplateODataClientContext
    extends ODataClientContext<ManufacturerTemplateDto> {
  final Dio httpClient;

  ManufacturerTemplateODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  ManufacturerTemplateDto fromJson(Map<String, dynamic> json) =>
      ManufacturerTemplateDto.fromJson(json);

  @override
  ODataListResponse<ManufacturerTemplateDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<ManufacturerTemplateDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/manufacturertemplate";

  List<ManufacturerTemplateDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ManufacturerTemplateDto.fromJson(e)).toList();
  }
}
