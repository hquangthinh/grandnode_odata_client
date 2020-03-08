import 'package:grandnode_odata_client/src/models/catalog/predefined_product_attribute_value_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductAttributeDto {
  String name;
  String description;
  String id;
  List<PredefinedProductAttributeValueDto> predefinedProductAttributeValues;

  ProductAttributeDto({
    this.name,
    this.description,
    this.id,
    this.predefinedProductAttributeValues,
  });

  factory ProductAttributeDto.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeDtoToJson(this);
}
