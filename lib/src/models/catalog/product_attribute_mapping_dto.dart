import 'package:json_annotation/json_annotation.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_attribute_value_dto.dart';

part 'product_attribute_mapping_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductAttributeMappingDto {
  String productAttributeId;
  String textPrompt;
  bool isRequired;
  int displayOrder;
  int validationMinLength;
  int validationMaxLength;
  String validationFileAllowedExtensions;
  int validationFileMaximumSize;
  String defaultValue;
  String conditionAttributeXml;
  String attributeControlType;
  String id;
  List<ProductAttributeValueDto> productAttributeValues;

  ProductAttributeMappingDto({
    this.productAttributeId,
    this.textPrompt,
    this.isRequired,
    this.displayOrder,
    this.validationMinLength,
    this.validationMaxLength,
    this.validationFileAllowedExtensions,
    this.validationFileMaximumSize,
    this.defaultValue,
    this.conditionAttributeXml,
    this.attributeControlType,
    this.id,
    this.productAttributeValues,
  });

  factory ProductAttributeMappingDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeMappingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeMappingDtoToJson(this);
}
