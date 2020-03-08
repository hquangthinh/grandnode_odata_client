import 'package:grandnode_odata_client/src/models/customer/address_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CustomerDto {
  String id;
  String customerGuid;
  String username;
  String email;
  String adminComment;
  bool isTaxExempt;
  bool freeShipping;
  String affiliateId;
  String vendorId;
  String storeId;
  bool active;
  bool deleted;
  String gender;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String company;
  String streetAddress;
  String streetAddress2;
  String zipPostalCode;
  String city;
  String countryId;
  String stateProvinceId;
  String phone;
  String fax;
  String vatNumber;
  String vatNumberStatusId;
  String signature;
  List<String> customerRoles;
  List<AddressDto> addresses;

  CustomerDto({
    this.id,
    this.customerGuid,
    this.username,
    this.email,
    this.adminComment,
    this.isTaxExempt,
    this.freeShipping,
    this.affiliateId,
    this.vendorId,
    this.storeId,
    this.active,
    this.deleted,
    this.gender,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.company,
    this.streetAddress,
    this.streetAddress2,
    this.zipPostalCode,
    this.city,
    this.countryId,
    this.stateProvinceId,
    this.phone,
    this.fax,
    this.vatNumber,
    this.vatNumberStatusId,
    this.signature,
    this.customerRoles,
    this.addresses,
  });

  factory CustomerDto.fromJson(Map<String, dynamic> json) => _$CustomerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);
}
