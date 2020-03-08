// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoryDto _$ProductCategoryDtoFromJson(Map<String, dynamic> json) {
  return ProductCategoryDto(
    categoryId: json['CategoryId'] as String,
    isFeaturedProduct: json['IsFeaturedProduct'] as bool,
  );
}

Map<String, dynamic> _$ProductCategoryDtoToJson(ProductCategoryDto instance) =>
    <String, dynamic>{
      'CategoryId': instance.categoryId,
      'IsFeaturedProduct': instance.isFeaturedProduct,
    };
