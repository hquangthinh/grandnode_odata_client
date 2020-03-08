import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/language_dto.dart';

class LanguageODataClientContext extends ODataClientContext<LanguageDto> {
  final Dio httpClient;

  LanguageODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  LanguageDto fromJson(Map<String, dynamic> json) => LanguageDto.fromJson(json);

  @override
  ODataListResponse<LanguageDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<LanguageDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/language";

  List<LanguageDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => LanguageDto.fromJson(e)).toList();
  }
}
