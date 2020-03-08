// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification_attribute_option_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificationAttributeOptionDto _$SpecificationAttributeOptionDtoFromJson(
    Map<String, dynamic> json) {
  return SpecificationAttributeOptionDto(
    name: json['Name'] as String,
    displayOrder: json['DisplayOrder'] as int,
    colorSquaresRgb: json['ColorSquaresRgb'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$SpecificationAttributeOptionDtoToJson(
        SpecificationAttributeOptionDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'DisplayOrder': instance.displayOrder,
      'ColorSquaresRgb': instance.colorSquaresRgb,
      'Id': instance.id,
    };
