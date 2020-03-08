import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_value_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductAttributeValueDto {
  String associatedProductId;
  String name;
  String colorSquaresRgb;
  String imageSquaresPictureId;
  int priceAdjustment;
  int weightAdjustment;
  int cost;
  int quantity;
  bool isPreSelected;
  int displayOrder;
  String pictureId;
  String attributeValueType;
  String id;

  ProductAttributeValueDto({
    this.associatedProductId,
    this.name,
    this.colorSquaresRgb,
    this.imageSquaresPictureId,
    this.priceAdjustment,
    this.weightAdjustment,
    this.cost,
    this.quantity,
    this.isPreSelected,
    this.displayOrder,
    this.pictureId,
    this.attributeValueType,
    this.id,
  });

  factory ProductAttributeValueDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeValueDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeValueDtoToJson(this);
}
