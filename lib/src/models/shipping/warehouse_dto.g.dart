// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarehouseDto _$WarehouseDtoFromJson(Map<String, dynamic> json) {
  return WarehouseDto(
    name: json['Name'] as String,
    adminComment: json['AdminComment'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$WarehouseDtoToJson(WarehouseDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'AdminComment': instance.adminComment,
      'Id': instance.id,
    };
