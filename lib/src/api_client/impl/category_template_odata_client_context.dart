import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/category_template_dto.dart';

class CategoryTemplateODataClientContext
    extends ODataClientContext<CategoryTemplateDto> {
  final Dio httpClient;

  CategoryTemplateODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  CategoryTemplateDto fromJson(Map<String, dynamic> json) =>
      CategoryTemplateDto.fromJson(json);

  @override
  ODataListResponse<CategoryTemplateDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<CategoryTemplateDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/categorytemplate";

  List<CategoryTemplateDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CategoryTemplateDto.fromJson(e)).toList();
  }
}
