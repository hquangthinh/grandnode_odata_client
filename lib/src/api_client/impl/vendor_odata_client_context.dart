import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/customer/vendor_dto.dart';

class VendorODataClientContext extends ODataClientContext<VendorDto> {
  final Dio httpClient;

  VendorODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  VendorDto fromJson(Map<String, dynamic> json) => VendorDto.fromJson(json);

  @override
  ODataListResponse<VendorDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<VendorDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/vendor";

  List<VendorDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => VendorDto.fromJson(e)).toList();
  }
}
