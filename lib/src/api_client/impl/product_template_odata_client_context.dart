import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_template_dto.dart';

class ProductTemplateODataClientContext
    extends ODataClientContext<ProductTemplateDto> {
  final Dio httpClient;

  ProductTemplateODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  ProductTemplateDto fromJson(Map<String, dynamic> json) =>
      ProductTemplateDto.fromJson(json);

  @override
  ODataListResponse<ProductTemplateDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<ProductTemplateDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/producttemplate";

  List<ProductTemplateDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ProductTemplateDto.fromJson(e)).toList();
  }
}
