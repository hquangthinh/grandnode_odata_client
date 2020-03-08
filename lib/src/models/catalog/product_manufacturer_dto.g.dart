// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_manufacturer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductManufacturerDto _$ProductManufacturerDtoFromJson(
    Map<String, dynamic> json) {
  return ProductManufacturerDto(
    manufacturerId: json['ManufacturerId'] as String,
    isFeaturedProduct: json['IsFeaturedProduct'] as bool,
  );
}

Map<String, dynamic> _$ProductManufacturerDtoToJson(
        ProductManufacturerDto instance) =>
    <String, dynamic>{
      'ManufacturerId': instance.manufacturerId,
      'IsFeaturedProduct': instance.isFeaturedProduct,
    };
