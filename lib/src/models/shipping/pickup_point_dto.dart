// To parse this JSON data, do
//
//     final pickupPointDto = pickupPointDtoFromJson(jsonString);

import 'dart:convert';

PickupPointDto pickupPointDtoFromJson(String str) =>
    PickupPointDto.fromJson(json.decode(str));

String pickupPointDtoToJson(PickupPointDto data) => json.encode(data.toJson());

class PickupPointDto {
  String name;
  String description;
  String adminComment;
  String warehouseId;
  String storeId;
  int pickupFee;
  int displayOrder;
  String id;

  PickupPointDto({
    this.name,
    this.description,
    this.adminComment,
    this.warehouseId,
    this.storeId,
    this.pickupFee,
    this.displayOrder,
    this.id,
  });

  factory PickupPointDto.fromJson(Map<String, dynamic> json) => PickupPointDto(
        name: json["Name"],
        description: json["Description"],
        adminComment: json["AdminComment"],
        warehouseId: json["WarehouseId"],
        storeId: json["StoreId"],
        pickupFee: json["PickupFee"],
        displayOrder: json["DisplayOrder"],
        id: json["Id"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Description": description,
        "AdminComment": adminComment,
        "WarehouseId": warehouseId,
        "StoreId": storeId,
        "PickupFee": pickupFee,
        "DisplayOrder": displayOrder,
        "Id": id,
      };
}
