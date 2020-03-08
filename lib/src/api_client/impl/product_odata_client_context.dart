import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_dto.dart';

class ProductODataClientContext extends ODataClientContext<ProductDto> {
  final Dio httpClient;

  ProductODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  ProductDto fromJson(Map<String, dynamic> json) => ProductDto.fromJson(json);

  @override
  ODataListResponse<ProductDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<ProductDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/product";

  List<ProductDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ProductDto.fromJson(e)).toList();
  }
}
