import 'package:json_annotation/json_annotation.dart';

part 'manufacturer_template_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ManufacturerTemplateDto {
  String name;
  int displayOrder;
  String viewPath;
  String id;

  ManufacturerTemplateDto({
    this.name,
    this.displayOrder,
    this.viewPath,
    this.id,
  });

  factory ManufacturerTemplateDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturerTemplateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturerTemplateDtoToJson(this);
}
