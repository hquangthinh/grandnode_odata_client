import 'package:json_annotation/json_annotation.dart';

part 'product_warehouse_inventory_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductWarehouseInventoryDto {
  String warehouseId;
  int stockQuantity;
  int reservedQuantity;
  String id;

  ProductWarehouseInventoryDto({
    this.warehouseId,
    this.stockQuantity,
    this.reservedQuantity,
    this.id,
  });

  factory ProductWarehouseInventoryDto.fromJson(Map<String, dynamic> json) =>
      _$ProductWarehouseInventoryDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductWarehouseInventoryDtoToJson(this);
}
