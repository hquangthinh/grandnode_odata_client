// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_mapping_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeMappingDto _$ProductAttributeMappingDtoFromJson(
    Map<String, dynamic> json) {
  return ProductAttributeMappingDto(
    productAttributeId: json['ProductAttributeId'] as String,
    textPrompt: json['TextPrompt'] as String,
    isRequired: json['IsRequired'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    validationMinLength: json['ValidationMinLength'] as int,
    validationMaxLength: json['ValidationMaxLength'] as int,
    validationFileAllowedExtensions:
        json['ValidationFileAllowedExtensions'] as String,
    validationFileMaximumSize: json['ValidationFileMaximumSize'] as int,
    defaultValue: json['DefaultValue'] as String,
    conditionAttributeXml: json['ConditionAttributeXml'] as String,
    attributeControlType: json['AttributeControlType'] as String,
    id: json['Id'] as String,
    productAttributeValues: (json['ProductAttributeValues'] as List)
        ?.map((e) => e == null
            ? null
            : ProductAttributeValueDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductAttributeMappingDtoToJson(
        ProductAttributeMappingDto instance) =>
    <String, dynamic>{
      'ProductAttributeId': instance.productAttributeId,
      'TextPrompt': instance.textPrompt,
      'IsRequired': instance.isRequired,
      'DisplayOrder': instance.displayOrder,
      'ValidationMinLength': instance.validationMinLength,
      'ValidationMaxLength': instance.validationMaxLength,
      'ValidationFileAllowedExtensions':
          instance.validationFileAllowedExtensions,
      'ValidationFileMaximumSize': instance.validationFileMaximumSize,
      'DefaultValue': instance.defaultValue,
      'ConditionAttributeXml': instance.conditionAttributeXml,
      'AttributeControlType': instance.attributeControlType,
      'Id': instance.id,
      'ProductAttributeValues': instance.productAttributeValues,
    };
