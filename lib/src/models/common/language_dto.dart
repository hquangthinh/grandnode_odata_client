// To parse this JSON data, do
//
//     final languageDto = languageDtoFromJson(jsonString);

import 'dart:convert';

LanguageDto languageDtoFromJson(String str) =>
    LanguageDto.fromJson(json.decode(str));

String languageDtoToJson(LanguageDto data) => json.encode(data.toJson());

class LanguageDto {
  String name;
  String languageCulture;
  String uniqueSeoCode;
  String flagImageFileName;
  bool rtl;
  String defaultCurrencyId;
  bool published;
  int displayOrder;
  String id;

  LanguageDto({
    this.name,
    this.languageCulture,
    this.uniqueSeoCode,
    this.flagImageFileName,
    this.rtl,
    this.defaultCurrencyId,
    this.published,
    this.displayOrder,
    this.id,
  });

  factory LanguageDto.fromJson(Map<String, dynamic> json) => LanguageDto(
        name: json["Name"],
        languageCulture: json["LanguageCulture"],
        uniqueSeoCode: json["UniqueSeoCode"],
        flagImageFileName: json["FlagImageFileName"],
        rtl: json["Rtl"],
        defaultCurrencyId: json["DefaultCurrencyId"],
        published: json["Published"],
        displayOrder: json["DisplayOrder"],
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "LanguageCulture": languageCulture,
        "UniqueSeoCode": uniqueSeoCode,
        "FlagImageFileName": flagImageFileName,
        "Rtl": rtl,
        "DefaultCurrencyId": defaultCurrencyId,
        "Published": published,
        "DisplayOrder": displayOrder,
        "Id": id,
      };
}
