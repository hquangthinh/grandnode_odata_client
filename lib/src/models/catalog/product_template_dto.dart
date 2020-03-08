import 'package:json_annotation/json_annotation.dart';

part 'product_template_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductTemplateDto {
  String name;
  int displayOrder;
  String viewPath;
  String id;

  ProductTemplateDto({
    this.name,
    this.displayOrder,
    this.viewPath,
    this.id,
  });

  factory ProductTemplateDto.fromJson(Map<String, dynamic> json) =>
      _$ProductTemplateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTemplateDtoToJson(this);
}
