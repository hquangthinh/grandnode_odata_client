import 'package:grandnode_odata_client/src/models/catalog/specification_attribute_option_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specification_attribute_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class SpecificationAttributeDto {
  String name;
  int displayOrder;
  String id;
  List<SpecificationAttributeOptionDto> specificationAttributeOptions;

  SpecificationAttributeDto({
    this.name,
    this.displayOrder,
    this.id,
    this.specificationAttributeOptions,
  });

  factory SpecificationAttributeDto.fromJson(Map<String, dynamic> json) =>
      _$SpecificationAttributeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SpecificationAttributeDtoToJson(this);
}
