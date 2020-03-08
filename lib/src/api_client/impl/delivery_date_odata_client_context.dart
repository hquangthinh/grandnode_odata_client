import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/shipping/delivery_date_dto.dart';

class DeliveryDateODataClientContext
    extends ODataClientContext<DeliveryDateDto> {
  final Dio httpClient;

  DeliveryDateODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  DeliveryDateDto fromJson(Map<String, dynamic> json) =>
      DeliveryDateDto.fromJson(json);

  @override
  ODataListResponse<DeliveryDateDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<DeliveryDateDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/deliverydate";

  List<DeliveryDateDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => DeliveryDateDto.fromJson(e)).toList();
  }
}
