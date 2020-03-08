// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_template_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTemplateDto _$ProductTemplateDtoFromJson(Map<String, dynamic> json) {
  return ProductTemplateDto(
    name: json['Name'] as String,
    displayOrder: json['DisplayOrder'] as int,
    viewPath: json['ViewPath'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductTemplateDtoToJson(ProductTemplateDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'DisplayOrder': instance.displayOrder,
      'ViewPath': instance.viewPath,
      'Id': instance.id,
    };
