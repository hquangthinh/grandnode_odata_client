import 'package:json_annotation/json_annotation.dart';

part 'product_tier_price_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductTierPriceDto {
  String storeId;
  String customerRoleId;
  int quantity;
  int price;
  DateTime startDateTimeUtc;
  DateTime endDateTimeUtc;
  String id;

  ProductTierPriceDto({
    this.storeId,
    this.customerRoleId,
    this.quantity,
    this.price,
    this.startDateTimeUtc,
    this.endDateTimeUtc,
    this.id,
  });

  factory ProductTierPriceDto.fromJson(Map<String, dynamic> json) =>
      _$ProductTierPriceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTierPriceDtoToJson(this);
}
