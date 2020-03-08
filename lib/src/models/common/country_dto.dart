// To parse this JSON data, do
//
//     final countryDto = countryDtoFromJson(jsonString);

import 'dart:convert';

CountryDto countryDtoFromJson(String str) =>
    CountryDto.fromJson(json.decode(str));

String countryDtoToJson(CountryDto data) => json.encode(data.toJson());

class CountryDto {
  String name;
  bool allowsBilling;
  bool allowsShipping;
  String twoLetterIsoCode;
  String threeLetterIsoCode;
  int numericIsoCode;
  bool subjectToVat;
  bool published;
  int displayOrder;
  String id;

  CountryDto({
    this.name,
    this.allowsBilling,
    this.allowsShipping,
    this.twoLetterIsoCode,
    this.threeLetterIsoCode,
    this.numericIsoCode,
    this.subjectToVat,
    this.published,
    this.displayOrder,
    this.id,
  });

  factory CountryDto.fromJson(Map<String, dynamic> json) => CountryDto(
        name: json["Name"],
        allowsBilling: json["AllowsBilling"],
        allowsShipping: json["AllowsShipping"],
        twoLetterIsoCode: json["TwoLetterIsoCode"],
        threeLetterIsoCode: json["ThreeLetterIsoCode"],
        numericIsoCode: json["NumericIsoCode"],
        subjectToVat: json["SubjectToVat"],
        published: json["Published"],
        displayOrder: json["DisplayOrder"],
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "AllowsBilling": allowsBilling,
        "AllowsShipping": allowsShipping,
        "TwoLetterIsoCode": twoLetterIsoCode,
        "ThreeLetterIsoCode": threeLetterIsoCode,
        "NumericIsoCode": numericIsoCode,
        "SubjectToVat": subjectToVat,
        "Published": published,
        "DisplayOrder": displayOrder,
        "Id": id,
      };
}
