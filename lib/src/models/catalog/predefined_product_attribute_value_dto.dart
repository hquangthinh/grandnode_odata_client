import 'package:json_annotation/json_annotation.dart';

part 'predefined_product_attribute_value_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class PredefinedProductAttributeValueDto {
  String name;
  int priceAdjustment;
  int weightAdjustment;
  int cost;
  bool isPreSelected;
  int displayOrder;
  String id;

  PredefinedProductAttributeValueDto({
    this.name,
    this.priceAdjustment,
    this.weightAdjustment,
    this.cost,
    this.isPreSelected,
    this.displayOrder,
    this.id,
  });

  factory PredefinedProductAttributeValueDto.fromJson(
          Map<String, dynamic> json) =>
      _$PredefinedProductAttributeValueDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PredefinedProductAttributeValueDtoToJson(this);
}
