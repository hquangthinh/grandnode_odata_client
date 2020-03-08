// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification_attribute_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificationAttributeDto _$SpecificationAttributeDtoFromJson(
    Map<String, dynamic> json) {
  return SpecificationAttributeDto(
    name: json['Name'] as String,
    displayOrder: json['DisplayOrder'] as int,
    id: json['Id'] as String,
    specificationAttributeOptions:
        (json['SpecificationAttributeOptions'] as List)
            ?.map((e) => e == null
                ? null
                : SpecificationAttributeOptionDto.fromJson(
                    e as Map<String, dynamic>))
            ?.toList(),
  );
}

Map<String, dynamic> _$SpecificationAttributeDtoToJson(
        SpecificationAttributeDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'DisplayOrder': instance.displayOrder,
      'Id': instance.id,
      'SpecificationAttributeOptions': instance.specificationAttributeOptions,
    };
