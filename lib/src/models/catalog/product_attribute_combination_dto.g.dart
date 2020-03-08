// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_combination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeCombinationDto _$ProductAttributeCombinationDtoFromJson(
    Map<String, dynamic> json) {
  return ProductAttributeCombinationDto(
    attributesXml: json['AttributesXml'] as String,
    stockQuantity: json['StockQuantity'] as int,
    allowOutOfStockOrders: json['AllowOutOfStockOrders'] as bool,
    text: json['Text'] as String,
    sku: json['Sku'] as String,
    manufacturerPartNumber: json['ManufacturerPartNumber'] as String,
    gtin: json['Gtin'] as String,
    overriddenPrice: (json['OverriddenPrice'] as num)?.toDouble(),
    notifyAdminForQuantityBelow: json['NotifyAdminForQuantityBelow'] as int,
    pictureId: json['PictureId'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductAttributeCombinationDtoToJson(
        ProductAttributeCombinationDto instance) =>
    <String, dynamic>{
      'AttributesXml': instance.attributesXml,
      'StockQuantity': instance.stockQuantity,
      'AllowOutOfStockOrders': instance.allowOutOfStockOrders,
      'Text': instance.text,
      'Sku': instance.sku,
      'ManufacturerPartNumber': instance.manufacturerPartNumber,
      'Gtin': instance.gtin,
      'OverriddenPrice': instance.overriddenPrice,
      'NotifyAdminForQuantityBelow': instance.notifyAdminForQuantityBelow,
      'PictureId': instance.pictureId,
      'Id': instance.id,
    };
