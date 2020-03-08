import 'package:json_annotation/json_annotation.dart';

part 'product_category_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductCategoryDto {
  String categoryId;
  bool isFeaturedProduct;

  ProductCategoryDto({
    this.categoryId,
    this.isFeaturedProduct,
  });

  factory ProductCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCategoryDtoToJson(this);
}
