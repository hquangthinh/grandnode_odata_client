import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/shipping/pickup_point_dto.dart';

class PickupPointODataClientContext extends ODataClientContext<PickupPointDto> {
  final Dio httpClient;

  PickupPointODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  PickupPointDto fromJson(Map<String, dynamic> json) =>
      PickupPointDto.fromJson(json);

  @override
  ODataListResponse<PickupPointDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<PickupPointDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/pickuppoint";

  List<PickupPointDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => PickupPointDto.fromJson(e)).toList();
  }
}
