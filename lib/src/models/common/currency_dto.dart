// To parse this JSON data, do
//
//     final currencyDto = currencyDtoFromJson(jsonString);

import 'dart:convert';

CurrencyDto currencyDtoFromJson(String str) =>
    CurrencyDto.fromJson(json.decode(str));

String currencyDtoToJson(CurrencyDto data) => json.encode(data.toJson());

class CurrencyDto {
  String name;
  String currencyCode;
  int rate;
  String displayLocale;
  String customFormatting;
  bool published;
  int displayOrder;
  DateTime createdOnUtc;
  DateTime updatedOnUtc;
  String id;

  CurrencyDto({
    this.name,
    this.currencyCode,
    this.rate,
    this.displayLocale,
    this.customFormatting,
    this.published,
    this.displayOrder,
    this.createdOnUtc,
    this.updatedOnUtc,
    this.id,
  });

  factory CurrencyDto.fromJson(Map<String, dynamic> json) => CurrencyDto(
        name: json["Name"],
        currencyCode: json["CurrencyCode"],
        rate: json["Rate"],
        displayLocale: json["DisplayLocale"],
        customFormatting: json["CustomFormatting"],
        published: json["Published"],
        displayOrder: json["DisplayOrder"],
        createdOnUtc: DateTime.parse(json["CreatedOnUtc"]),
        updatedOnUtc: DateTime.parse(json["UpdatedOnUtc"]),
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "CurrencyCode": currencyCode,
        "Rate": rate,
        "DisplayLocale": displayLocale,
        "CustomFormatting": customFormatting,
        "Published": published,
        "DisplayOrder": displayOrder,
        "CreatedOnUtc": createdOnUtc.toIso8601String(),
        "UpdatedOnUtc": updatedOnUtc.toIso8601String(),
        "Id": id,
      };
}
