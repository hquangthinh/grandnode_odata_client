// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeValueDto _$ProductAttributeValueDtoFromJson(
    Map<String, dynamic> json) {
  return ProductAttributeValueDto(
    associatedProductId: json['AssociatedProductId'] as String,
    name: json['Name'] as String,
    colorSquaresRgb: json['ColorSquaresRgb'] as String,
    imageSquaresPictureId: json['ImageSquaresPictureId'] as String,
    priceAdjustment: json['PriceAdjustment'] as int,
    weightAdjustment: json['WeightAdjustment'] as int,
    cost: json['Cost'] as int,
    quantity: json['Quantity'] as int,
    isPreSelected: json['IsPreSelected'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    pictureId: json['PictureId'] as String,
    attributeValueType: json['AttributeValueType'] as String,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductAttributeValueDtoToJson(
        ProductAttributeValueDto instance) =>
    <String, dynamic>{
      'AssociatedProductId': instance.associatedProductId,
      'Name': instance.name,
      'ColorSquaresRgb': instance.colorSquaresRgb,
      'ImageSquaresPictureId': instance.imageSquaresPictureId,
      'PriceAdjustment': instance.priceAdjustment,
      'WeightAdjustment': instance.weightAdjustment,
      'Cost': instance.cost,
      'Quantity': instance.quantity,
      'IsPreSelected': instance.isPreSelected,
      'DisplayOrder': instance.displayOrder,
      'PictureId': instance.pictureId,
      'AttributeValueType': instance.attributeValueType,
      'Id': instance.id,
    };
