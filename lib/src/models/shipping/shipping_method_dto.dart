import 'package:json_annotation/json_annotation.dart';

part 'shipping_method_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ShippingMethodDto {
  String name;
  String description;
  int displayOrder;
  String id;

  ShippingMethodDto({
    this.name,
    this.description,
    this.displayOrder,
    this.id,
  });

  factory ShippingMethodDto.fromJson(Map<String, dynamic> json) => _$ShippingMethodDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingMethodDtoToJson(this);
}
