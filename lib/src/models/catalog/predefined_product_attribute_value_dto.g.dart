// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predefined_product_attribute_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredefinedProductAttributeValueDto _$PredefinedProductAttributeValueDtoFromJson(
    Map<String, dynamic> json) {
  return PredefinedProductAttributeValueDto(
    name: json['Name'] as String,
    priceAdjustment: json['PriceAdjustment'] as int,
    weightAdjustment: json['WeightAdjustment'] as int,
    cost: json['Cost'] as int,
    isPreSelected: json['IsPreSelected'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$PredefinedProductAttributeValueDtoToJson(
        PredefinedProductAttributeValueDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'PriceAdjustment': instance.priceAdjustment,
      'WeightAdjustment': instance.weightAdjustment,
      'Cost': instance.cost,
      'IsPreSelected': instance.isPreSelected,
      'DisplayOrder': instance.displayOrder,
      'Id': instance.id,
    };
