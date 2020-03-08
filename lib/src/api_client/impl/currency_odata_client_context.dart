import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/currency_dto.dart';

class CurrencyODataClientContext extends ODataClientContext<CurrencyDto> {
  final Dio httpClient;

  CurrencyODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  CurrencyDto fromJson(Map<String, dynamic> json) => CurrencyDto.fromJson(json);

  @override
  ODataListResponse<CurrencyDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<CurrencyDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/currency";

  List<CurrencyDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CurrencyDto.fromJson(e)).toList();
  }
}
