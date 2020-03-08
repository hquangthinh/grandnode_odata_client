// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tier_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTierPriceDto _$ProductTierPriceDtoFromJson(Map<String, dynamic> json) {
  return ProductTierPriceDto(
    storeId: json['StoreId'] as String,
    customerRoleId: json['CustomerRoleId'] as String,
    quantity: json['Quantity'] as int,
    price: json['Price'] as int,
    startDateTimeUtc: json['StartDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['StartDateTimeUtc'] as String),
    endDateTimeUtc: json['EndDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['EndDateTimeUtc'] as String),
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ProductTierPriceDtoToJson(
        ProductTierPriceDto instance) =>
    <String, dynamic>{
      'StoreId': instance.storeId,
      'CustomerRoleId': instance.customerRoleId,
      'Quantity': instance.quantity,
      'Price': instance.price,
      'StartDateTimeUtc': instance.startDateTimeUtc?.toIso8601String(),
      'EndDateTimeUtc': instance.endDateTimeUtc?.toIso8601String(),
      'Id': instance.id,
    };
