// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethodDto _$ShippingMethodDtoFromJson(Map<String, dynamic> json) {
  return ShippingMethodDto(
    name: json['Name'] as String,
    description: json['Description'] as String,
    displayOrder: json['DisplayOrder'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ShippingMethodDtoToJson(ShippingMethodDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Description': instance.description,
      'DisplayOrder': instance.displayOrder,
      'Id': instance.id,
    };
