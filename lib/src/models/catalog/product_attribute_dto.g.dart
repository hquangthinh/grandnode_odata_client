// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeDto _$ProductAttributeDtoFromJson(Map<String, dynamic> json) {
  return ProductAttributeDto(
    name: json['Name'] as String,
    description: json['Description'] as String,
    id: json['Id'] as String,
    predefinedProductAttributeValues:
        (json['PredefinedProductAttributeValues'] as List)
            ?.map((e) => e == null
                ? null
                : PredefinedProductAttributeValueDto.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
  );
}

Map<String, dynamic> _$ProductAttributeDtoToJson(
        ProductAttributeDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Description': instance.description,
      'Id': instance.id,
      'PredefinedProductAttributeValues':
          instance.predefinedProductAttributeValues,
    };
