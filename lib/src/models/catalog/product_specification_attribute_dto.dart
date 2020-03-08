import 'package:json_annotation/json_annotation.dart';

part 'product_specification_attribute_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductSpecificationAttributeDto {
  String specificationAttributeId;
  String specificationAttributeOptionId;
  String customValue;
  bool allowFiltering;
  bool showOnProductPage;
  int displayOrder;
  String attributeType;
  String id;

  ProductSpecificationAttributeDto({
    this.specificationAttributeId,
    this.specificationAttributeOptionId,
    this.customValue,
    this.allowFiltering,
    this.showOnProductPage,
    this.displayOrder,
    this.attributeType,
    this.id,
  });

  factory ProductSpecificationAttributeDto.fromJson(
          Map<String, dynamic> json) =>
      _$ProductSpecificationAttributeDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductSpecificationAttributeDtoToJson(this);
}
