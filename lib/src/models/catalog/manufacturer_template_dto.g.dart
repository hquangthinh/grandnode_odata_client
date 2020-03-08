// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerTemplateDto _$ManufacturerTemplateDtoFromJson(
    Map<String, dynamic> json) {
  return ManufacturerTemplateDto(
    name: json['Name'] as String,
    displayOrder: json['DisplayOrder'] as int,
    viewPath: json['ViewPath'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ManufacturerTemplateDtoToJson(
        ManufacturerTemplateDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'DisplayOrder': instance.displayOrder,
      'ViewPath': instance.viewPath,
      'Id': instance.id,
    };
