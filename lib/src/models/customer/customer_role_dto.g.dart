// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_role_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRoleDto _$CustomerRoleDtoFromJson(Map<String, dynamic> json) {
  return CustomerRoleDto(
    name: json['Name'] as String,
    freeShipping: json['FreeShipping'] as bool,
    taxExempt: json['TaxExempt'] as bool,
    active: json['Active'] as bool,
    isSystemRole: json['IsSystemRole'] as bool,
    systemName: json['SystemName'] as String,
    enablePasswordLifetime: json['EnablePasswordLifetime'] as bool,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$CustomerRoleDtoToJson(CustomerRoleDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'FreeShipping': instance.freeShipping,
      'TaxExempt': instance.taxExempt,
      'Active': instance.active,
      'IsSystemRole': instance.isSystemRole,
      'SystemName': instance.systemName,
      'EnablePasswordLifetime': instance.enablePasswordLifetime,
      'Id': instance.id,
    };
