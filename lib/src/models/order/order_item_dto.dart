import 'package:json_annotation/json_annotation.dart';

part 'order_item_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class OrderItemDto {
  String orderItemGuid;
  String productId;
  String vendorId;
  String warehouseId;
  int quantity;
  int unitPriceWithoutDiscInclTax;
  int unitPriceWithoutDiscExclTax;
  int unitPriceInclTax;
  int unitPriceExclTax;
  int priceInclTax;
  int priceExclTax;
  int discountAmountInclTax;
  int discountAmountExclTax;
  int originalProductCost;
  String attributeDescription;
  String attributesXml;
  int downloadCount;
  bool isDownloadActivated;
  String licenseDownloadId;
  int itemWeight;
  String id;

  OrderItemDto({
    this.orderItemGuid,
    this.productId,
    this.vendorId,
    this.warehouseId,
    this.quantity,
    this.unitPriceWithoutDiscInclTax,
    this.unitPriceWithoutDiscExclTax,
    this.unitPriceInclTax,
    this.unitPriceExclTax,
    this.priceInclTax,
    this.priceExclTax,
    this.discountAmountInclTax,
    this.discountAmountExclTax,
    this.originalProductCost,
    this.attributeDescription,
    this.attributesXml,
    this.downloadCount,
    this.isDownloadActivated,
    this.licenseDownloadId,
    this.itemWeight,
    this.id,
  });

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemDtoToJson(this);
}
