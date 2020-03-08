// To parse this JSON data, do
//
//     final deliveryDateDto = deliveryDateDtoFromJson(jsonString);

import 'dart:convert';

DeliveryDateDto deliveryDateDtoFromJson(String str) =>
    DeliveryDateDto.fromJson(json.decode(str));

String deliveryDateDtoToJson(DeliveryDateDto data) =>
    json.encode(data.toJson());

class DeliveryDateDto {
  String name;
  int displayOrder;
  String colorSquaresRgb;
  String id;

  DeliveryDateDto({
    this.name,
    this.displayOrder,
    this.colorSquaresRgb,
    this.id,
  });

  factory DeliveryDateDto.fromJson(Map<String, dynamic> json) =>
      DeliveryDateDto(
        name: json["Name"],
        displayOrder: json["DisplayOrder"],
        colorSquaresRgb: json["ColorSquaresRgb"],
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "DisplayOrder": displayOrder,
        "ColorSquaresRgb": colorSquaresRgb,
        "Id": id,
      };
}
