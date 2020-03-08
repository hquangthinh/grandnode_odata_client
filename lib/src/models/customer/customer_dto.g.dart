// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) {
  return CustomerDto(
    id: json['Id'] as String,
    customerGuid: json['CustomerGuid'] as String,
    username: json['Username'] as String,
    email: json['Email'] as String,
    adminComment: json['AdminComment'] as String,
    isTaxExempt: json['IsTaxExempt'] as bool,
    freeShipping: json['FreeShipping'] as bool,
    affiliateId: json['AffiliateId'] as String,
    vendorId: json['VendorId'] as String,
    storeId: json['StoreId'] as String,
    active: json['Active'] as bool,
    deleted: json['Deleted'] as bool,
    gender: json['Gender'] as String,
    firstName: json['FirstName'] as String,
    lastName: json['LastName'] as String,
    dateOfBirth: json['DateOfBirth'] == null
        ? null
        : DateTime.parse(json['DateOfBirth'] as String),
    company: json['Company'] as String,
    streetAddress: json['StreetAddress'] as String,
    streetAddress2: json['StreetAddress2'] as String,
    zipPostalCode: json['ZipPostalCode'] as String,
    city: json['City'] as String,
    countryId: json['CountryId'] as String,
    stateProvinceId: json['StateProvinceId'] as String,
    phone: json['Phone'] as String,
    fax: json['Fax'] as String,
    vatNumber: json['VatNumber'] as String,
    vatNumberStatusId: json['VatNumberStatusId'] as String,
    signature: json['Signature'] as String,
    customerRoles:
        (json['CustomerRoles'] as List)?.map((e) => e as String)?.toList(),
    addresses: (json['Addresses'] as List)
        ?.map((e) =>
            e == null ? null : AddressDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CustomerDtoToJson(CustomerDto instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'CustomerGuid': instance.customerGuid,
      'Username': instance.username,
      'Email': instance.email,
      'AdminComment': instance.adminComment,
      'IsTaxExempt': instance.isTaxExempt,
      'FreeShipping': instance.freeShipping,
      'AffiliateId': instance.affiliateId,
      'VendorId': instance.vendorId,
      'StoreId': instance.storeId,
      'Active': instance.active,
      'Deleted': instance.deleted,
      'Gender': instance.gender,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'DateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'Company': instance.company,
      'StreetAddress': instance.streetAddress,
      'StreetAddress2': instance.streetAddress2,
      'ZipPostalCode': instance.zipPostalCode,
      'City': instance.city,
      'CountryId': instance.countryId,
      'StateProvinceId': instance.stateProvinceId,
      'Phone': instance.phone,
      'Fax': instance.fax,
      'VatNumber': instance.vatNumber,
      'VatNumberStatusId': instance.vatNumberStatusId,
      'Signature': instance.signature,
      'CustomerRoles': instance.customerRoles,
      'Addresses': instance.addresses,
    };
