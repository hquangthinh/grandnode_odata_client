import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_response.dart';
import 'package:grandnode_odata_client/src/models/customer/customer_role_dto.dart';

class CustomerRoleODataClientContext
    extends ODataClientContext<CustomerRoleDto> {
  final Dio httpClient;

  CustomerRoleODataClientContext(this.httpClient)
      : super(httpClient: httpClient);

  @override
  CustomerRoleDto fromJson(Map<String, dynamic> json) =>
      CustomerRoleDto.fromJson(json);

  @override
  ODataListResponse<CustomerRoleDto> fromJsonArray(Map<String, dynamic> json) =>
      ODataListResponse<CustomerRoleDto>(
        odataContext: json["@odata.context"],
        odataCount: json["@odata.count"],
        value: _jsonArrayToList(json["value"] as List),
      );

  @override
  String getDefaultResourcePath() => "/odata/customerrole";

  List<CustomerRoleDto> _jsonArrayToList(List<dynamic> list) {
    if (list == null) return [];
    return list.map((e) => CustomerRoleDto.fromJson(e)).toList();
  }
}
