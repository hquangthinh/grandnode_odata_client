import 'package:json_annotation/json_annotation.dart';

part 'category_template_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CategoryTemplateDto {
  String name;
  int displayOrder;
  String viewPath;
  String id;

  CategoryTemplateDto({
    this.name,
    this.displayOrder,
    this.viewPath,
    this.id,
  });

  factory CategoryTemplateDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryTemplateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryTemplateDtoToJson(this);
}
