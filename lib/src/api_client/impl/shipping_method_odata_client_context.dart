import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/shipping/shipping_method_dto.dart';

class ShippingMethodODataClientContext
    extends ODataClientContext<ShippingMethodDto> {
  final Dio httpClient;

  ShippingMethodODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  ShippingMethodDto fromJson(Map<String, dynamic> json) =>
      ShippingMethodDto.fromJson(json);

  @override
  ODataListResponse<ShippingMethodDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<ShippingMethodDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/shippingmethod";

  List<ShippingMethodDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => ShippingMethodDto.fromJson(e)).toList();
  }
}
