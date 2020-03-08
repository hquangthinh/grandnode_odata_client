// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) {
  return OrderItemDto(
    orderItemGuid: json['OrderItemGuid'] as String,
    productId: json['ProductId'] as String,
    vendorId: json['VendorId'] as String,
    warehouseId: json['WarehouseId'] as String,
    quantity: json['Quantity'] as int,
    unitPriceWithoutDiscInclTax: json['UnitPriceWithoutDiscInclTax'] as int,
    unitPriceWithoutDiscExclTax: json['UnitPriceWithoutDiscExclTax'] as int,
    unitPriceInclTax: json['UnitPriceInclTax'] as int,
    unitPriceExclTax: json['UnitPriceExclTax'] as int,
    priceInclTax: json['PriceInclTax'] as int,
    priceExclTax: json['PriceExclTax'] as int,
    discountAmountInclTax: json['DiscountAmountInclTax'] as int,
    discountAmountExclTax: json['DiscountAmountExclTax'] as int,
    originalProductCost: json['OriginalProductCost'] as int,
    attributeDescription: json['AttributeDescription'] as String,
    attributesXml: json['AttributesXml'] as String,
    downloadCount: json['DownloadCount'] as int,
    isDownloadActivated: json['IsDownloadActivated'] as bool,
    licenseDownloadId: json['LicenseDownloadId'] as String,
    itemWeight: json['ItemWeight'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$OrderItemDtoToJson(OrderItemDto instance) =>
    <String, dynamic>{
      'OrderItemGuid': instance.orderItemGuid,
      'ProductId': instance.productId,
      'VendorId': instance.vendorId,
      'WarehouseId': instance.warehouseId,
      'Quantity': instance.quantity,
      'UnitPriceWithoutDiscInclTax': instance.unitPriceWithoutDiscInclTax,
      'UnitPriceWithoutDiscExclTax': instance.unitPriceWithoutDiscExclTax,
      'UnitPriceInclTax': instance.unitPriceInclTax,
      'UnitPriceExclTax': instance.unitPriceExclTax,
      'PriceInclTax': instance.priceInclTax,
      'PriceExclTax': instance.priceExclTax,
      'DiscountAmountInclTax': instance.discountAmountInclTax,
      'DiscountAmountExclTax': instance.discountAmountExclTax,
      'OriginalProductCost': instance.originalProductCost,
      'AttributeDescription': instance.attributeDescription,
      'AttributesXml': instance.attributesXml,
      'DownloadCount': instance.downloadCount,
      'IsDownloadActivated': instance.isDownloadActivated,
      'LicenseDownloadId': instance.licenseDownloadId,
      'ItemWeight': instance.itemWeight,
      'Id': instance.id,
    };
