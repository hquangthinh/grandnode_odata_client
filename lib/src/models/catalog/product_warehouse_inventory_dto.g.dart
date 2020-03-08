// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_warehouse_inventory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductWarehouseInventoryDto _$ProductWarehouseInventoryDtoFromJson(
    Map<String, dynamic> json) {
  return ProductWarehouseInventoryDto(
    warehouseId: json['WarehouseId'] as String,
    stockQuantity: json['StockQuantity'] as int,
    reservedQuantity: json['ReservedQuantity'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductWarehouseInventoryDtoToJson(
        ProductWarehouseInventoryDto instance) =>
    <String, dynamic>{
      'WarehouseId': instance.warehouseId,
      'StockQuantity': instance.stockQuantity,
      'ReservedQuantity': instance.reservedQuantity,
      'Id': instance.id,
    };
