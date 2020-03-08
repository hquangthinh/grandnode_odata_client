import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_combination_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductAttributeCombinationDto {
  String attributesXml;
  int stockQuantity;
  bool allowOutOfStockOrders;
  String text;
  String sku;
  String manufacturerPartNumber;
  String gtin;
  double overriddenPrice;
  int notifyAdminForQuantityBelow;
  String pictureId;
  String id;

  ProductAttributeCombinationDto({
    this.attributesXml,
    this.stockQuantity,
    this.allowOutOfStockOrders,
    this.text,
    this.sku,
    this.manufacturerPartNumber,
    this.gtin,
    this.overriddenPrice,
    this.notifyAdminForQuantityBelow,
    this.pictureId,
    this.id,
  });

  factory ProductAttributeCombinationDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeCombinationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeCombinationDtoToJson(this);
}
