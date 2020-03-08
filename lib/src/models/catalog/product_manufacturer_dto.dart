import 'package:json_annotation/json_annotation.dart';

part 'product_manufacturer_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductManufacturerDto {
  String manufacturerId;
  bool isFeaturedProduct;

  ProductManufacturerDto({
    this.manufacturerId,
    this.isFeaturedProduct,
  });

  factory ProductManufacturerDto.fromJson(Map<String, dynamic> json) =>
      _$ProductManufacturerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductManufacturerDtoToJson(this);
}
