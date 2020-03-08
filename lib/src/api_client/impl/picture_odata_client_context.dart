import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/common/picture_dto.dart';

class PictureODataClientContext extends ODataClientContext<PictureDto> {
  final Dio httpClient;

  PictureODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  PictureDto fromJson(Map<String, dynamic> json) => PictureDto.fromJson(json);

  @override
  ODataListResponse<PictureDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<PictureDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/picture";

  List<PictureDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => PictureDto.fromJson(e)).toList();
  }
}
