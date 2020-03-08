import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/customer/customer_dto.dart';

class CustomerODataClientContext extends ODataClientContext<CustomerDto> {
  final Dio httpClient;

  CustomerODataClientContext(this.httpClient) : super(httpClient: httpClient);

  @override
  CustomerDto fromJson(Map<String, dynamic> json) => CustomerDto.fromJson(json);

  @override
  ODataListResponse<CustomerDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<CustomerDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/customer";

  List<CustomerDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CustomerDto.fromJson(e)).toList();
  }
}
