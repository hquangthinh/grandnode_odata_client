import 'package:json_annotation/json_annotation.dart';

part 'specification_attribute_option_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class SpecificationAttributeOptionDto {
  String name;
  int displayOrder;
  String colorSquaresRgb;
  String id;

  SpecificationAttributeOptionDto({
    this.name,
    this.displayOrder,
    this.colorSquaresRgb,
    this.id,
  });

  factory SpecificationAttributeOptionDto.fromJson(Map<String, dynamic> json) =>
      _$SpecificationAttributeOptionDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificationAttributeOptionDtoToJson(this);
}
