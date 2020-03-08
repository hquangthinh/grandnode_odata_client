// To parse this JSON data, do
//
//     final stateProvinceDto = stateProvinceDtoFromJson(jsonString);

import 'dart:convert';

StateProvinceDto stateProvinceDtoFromJson(String str) =>
    StateProvinceDto.fromJson(json.decode(str));

String stateProvinceDtoToJson(StateProvinceDto data) =>
    json.encode(data.toJson());

class StateProvinceDto {
  String countryId;
  String name;
  String abbreviation;
  bool published;
  int displayOrder;
  String id;

  StateProvinceDto({
    this.countryId,
    this.name,
    this.abbreviation,
    this.published,
    this.displayOrder,
    this.id,
  });

  factory StateProvinceDto.fromJson(Map<String, dynamic> json) =>
      StateProvinceDto(
        countryId: json["CountryId"],
        name: json["Name"],
        abbreviation: json["Abbreviation"],
        published: json["Published"],
        displayOrder: json["DisplayOrder"],
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "CountryId": countryId,
        "Name": name,
        "Abbreviation": abbreviation,
        "Published": published,
        "DisplayOrder": displayOrder,
        "Id": id,
      };
}
