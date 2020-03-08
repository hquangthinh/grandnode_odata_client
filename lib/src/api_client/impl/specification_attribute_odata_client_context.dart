import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/specification_attribute_dto.dart';

class SpecificationAttributeODataClientContext
    extends ODataClientContext<SpecificationAttributeDto> {
  final Dio httpClient;

  SpecificationAttributeODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  SpecificationAttributeDto fromJson(Map<String, dynamic> json) =>
      SpecificationAttributeDto.fromJson(json);

  @override
  ODataListResponse<SpecificationAttributeDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<SpecificationAttributeDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/specificationattribute";

  List<SpecificationAttributeDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => SpecificationAttributeDto.fromJson(e)).toList();
  }
}
