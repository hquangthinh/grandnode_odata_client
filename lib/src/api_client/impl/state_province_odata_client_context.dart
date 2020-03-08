import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/state_province_dto.dart';

class StateProvinceODataClientContext
    extends ODataClientContext<StateProvinceDto> {
  final Dio httpClient;

  StateProvinceODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  StateProvinceDto fromJson(Map<String, dynamic> json) =>
      StateProvinceDto.fromJson(json);

  @override
  ODataListResponse<StateProvinceDto> fromJsonArray(
          Map<String, dynamic> json) =>
      ODataListResponse<StateProvinceDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/stateprovince";

  List<StateProvinceDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => StateProvinceDto.fromJson(e)).toList();
  }
}
