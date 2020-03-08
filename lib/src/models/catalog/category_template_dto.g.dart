// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryTemplateDto _$CategoryTemplateDtoFromJson(Map<String, dynamic> json) {
  return CategoryTemplateDto(
    name: json['Name'] as String,
    displayOrder: json['DisplayOrder'] as int,
    viewPath: json['ViewPath'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$CategoryTemplateDtoToJson(
        CategoryTemplateDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'DisplayOrder': instance.displayOrder,
      'ViewPath': instance.viewPath,
      'Id': instance.id,
    };
