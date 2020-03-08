// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_specification_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSpecificationAttributeDto _$ProductSpecificationAttributeDtoFromJson(
    Map<String, dynamic> json) {
  return ProductSpecificationAttributeDto(
    specificationAttributeId: json['SpecificationAttributeId'] as String,
    specificationAttributeOptionId:
        json['SpecificationAttributeOptionId'] as String,
    customValue: json['CustomValue'] as String,
    allowFiltering: json['AllowFiltering'] as bool,
    showOnProductPage: json['ShowOnProductPage'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    attributeType: json['AttributeType'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductSpecificationAttributeDtoToJson(
        ProductSpecificationAttributeDto instance) =>
    <String, dynamic>{
      'SpecificationAttributeId': instance.specificationAttributeId,
      'SpecificationAttributeOptionId': instance.specificationAttributeOptionId,
      'CustomValue': instance.customValue,
      'AllowFiltering': instance.allowFiltering,
      'ShowOnProductPage': instance.showOnProductPage,
      'DisplayOrder': instance.displayOrder,
      'AttributeType': instance.attributeType,
      'Id': instance.id,
    };
