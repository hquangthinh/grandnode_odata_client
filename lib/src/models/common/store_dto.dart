// To parse this JSON data, do
//
//     final storeDto = storeDtoFromJson(jsonString);

import 'dart:convert';

StoreDto storeDtoFromJson(String str) => StoreDto.fromJson(json.decode(str));

String storeDtoToJson(StoreDto data) => json.encode(data.toJson());

class StoreDto {
  String name;
  String url;
  bool sslEnabled;
  String secureUrl;
  String hosts;
  String defaultLanguageId;
  String defaultWarehouseId;
  int displayOrder;
  String companyName;
  String companyAddress;
  String companyPhoneNumber;
  String companyVat;
  String id;

  StoreDto({
    this.name,
    this.url,
    this.sslEnabled,
    this.secureUrl,
    this.hosts,
    this.defaultLanguageId,
    this.defaultWarehouseId,
    this.displayOrder,
    this.companyName,
    this.companyAddress,
    this.companyPhoneNumber,
    this.companyVat,
    this.id,
  });

  factory StoreDto.fromJson(Map<String, dynamic> json) => json == null
      ? null
      : StoreDto(
          name: json["Name"],
          url: json["Url"],
          sslEnabled: json["SslEnabled"],
          secureUrl: json["SecureUrl"],
          hosts: json["Hosts"],
          defaultLanguageId: json["DefaultLanguageId"],
          defaultWarehouseId: json["DefaultWarehouseId"],
          displayOrder: json["DisplayOrder"],
          companyName: json["CompanyName"],
          companyAddress: json["CompanyAddress"],
          companyPhoneNumber: json["CompanyPhoneNumber"],
          companyVat: json["CompanyVat"],
          id: json["Id"],
        );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Url": url,
        "SslEnabled": sslEnabled,
        "SecureUrl": secureUrl,
        "Hosts": hosts,
        "DefaultLanguageId": defaultLanguageId,
        "DefaultWarehouseId": defaultWarehouseId,
        "DisplayOrder": displayOrder,
        "CompanyName": companyName,
        "CompanyAddress": companyAddress,
        "CompanyPhoneNumber": companyPhoneNumber,
        "CompanyVat": companyVat,
        "Id": id,
      };
}
