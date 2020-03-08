// To parse this JSON data, do
//
//     final addressDto = addressDtoFromJson(jsonString);

import 'dart:convert';

AddressDto addressDtoFromJson(String str) =>
    AddressDto.fromJson(json.decode(str));

String addressDtoToJson(AddressDto data) => json.encode(data.toJson());

class AddressDto {
  String firstName;
  String lastName;
  String email;
  String company;
  String vatNumber;
  String countryId;
  String stateProvinceId;
  String city;
  String address1;
  String address2;
  String zipPostalCode;
  String phoneNumber;
  String faxNumber;
  String customAttributes;
  DateTime createdOnUtc;
  String id;

  AddressDto({
    this.firstName,
    this.lastName,
    this.email,
    this.company,
    this.vatNumber,
    this.countryId,
    this.stateProvinceId,
    this.city,
    this.address1,
    this.address2,
    this.zipPostalCode,
    this.phoneNumber,
    this.faxNumber,
    this.customAttributes,
    this.createdOnUtc,
    this.id,
  });

  factory AddressDto.fromJson(Map<String, dynamic> json) => AddressDto(
        firstName: json["FirstName"],
        lastName: json["LastName"],
        email: json["Email"],
        company: json["Company"],
        vatNumber: json["VatNumber"],
        countryId: json["CountryId"],
        stateProvinceId: json["StateProvinceId"],
        city: json["City"],
        address1: json["Address1"],
        address2: json["Address2"],
        zipPostalCode: json["ZipPostalCode"],
        phoneNumber: json["PhoneNumber"],
        faxNumber: json["FaxNumber"],
        customAttributes: json["CustomAttributes"],
        createdOnUtc: DateTime.parse(json["CreatedOnUtc"]),
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "FirstName": firstName,
        "LastName": lastName,
        "Email": email,
        "Company": company,
        "VatNumber": vatNumber,
        "CountryId": countryId,
        "StateProvinceId": stateProvinceId,
        "City": city,
        "Address1": address1,
        "Address2": address2,
        "ZipPostalCode": zipPostalCode,
        "PhoneNumber": phoneNumber,
        "FaxNumber": faxNumber,
        "CustomAttributes": customAttributes,
        "CreatedOnUtc": createdOnUtc.toIso8601String(),
        "Id": id,
      };
}
