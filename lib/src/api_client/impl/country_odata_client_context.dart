import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/country_dto.dart';

class CountryODataClientContext extends ODataClientContext<CountryDto> {
  final Dio httpClient;

  CountryODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  CountryDto fromJson(Map<String, dynamic> json) => CountryDto.fromJson(json);

  @override
  ODataListResponse<CountryDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<CountryDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/country";

  List<CountryDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CountryDto.fromJson(e)).toList();
  }
}
