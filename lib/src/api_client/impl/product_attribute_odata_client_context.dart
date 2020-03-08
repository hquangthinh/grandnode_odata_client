import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_attribute_dto.dart';

class ProductAttributeODataClientContext
    extends ODataClientContext<ProductAttributeDto> {
  final Dio httpClient;

  ProductAttributeODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  ProductAttributeDto fromJson(Map<String, dynamic> json) =>
      ProductAttributeDto.fromJson(json);

  @override
  ODataListResponse<ProductAttributeDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<ProductAttributeDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/productattribute";

  List<ProductAttributeDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ProductAttributeDto.fromJson(e)).toList();
  }
}
