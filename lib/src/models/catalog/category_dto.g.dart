// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return CategoryDto(
    name: json['Name'] as String,
    description: json['Description'] as String,
    categoryTemplateId: json['CategoryTemplateId'] as String,
    metaKeywords: json['MetaKeywords'] as String,
    metaDescription: json['MetaDescription'] as String,
    metaTitle: json['MetaTitle'] as String,
    seName: json['SeName'] as String,
    parentCategoryId: json['ParentCategoryId'] as String,
    pictureId: json['PictureId'] as String,
    pageSize: json['PageSize'] as int,
    allowCustomersToSelectPageSize:
        json['AllowCustomersToSelectPageSize'] as bool,
    pageSizeOptions: json['PageSizeOptions'] as String,
    priceRanges: json['PriceRanges'] as String,
    showOnHomePage: json['ShowOnHomePage'] as bool,
    featuredProductsOnHomaPage: json['FeaturedProductsOnHomaPage'] as bool,
    includeInTopMenu: json['IncludeInTopMenu'] as bool,
    published: json['Published'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    flag: json['Flag'] as String,
    flagStyle: json['FlagStyle'] as String,
    icon: json['Icon'] as String,
    hideOnCatalog: json['HideOnCatalog'] as bool,
    showOnSearchBox: json['ShowOnSearchBox'] as bool,
    searchBoxDisplayOrder: json['SearchBoxDisplayOrder'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Description': instance.description,
      'CategoryTemplateId': instance.categoryTemplateId,
      'MetaKeywords': instance.metaKeywords,
      'MetaDescription': instance.metaDescription,
      'MetaTitle': instance.metaTitle,
      'SeName': instance.seName,
      'ParentCategoryId': instance.parentCategoryId,
      'PictureId': instance.pictureId,
      'PageSize': instance.pageSize,
      'AllowCustomersToSelectPageSize': instance.allowCustomersToSelectPageSize,
      'PageSizeOptions': instance.pageSizeOptions,
      'PriceRanges': instance.priceRanges,
      'ShowOnHomePage': instance.showOnHomePage,
      'FeaturedProductsOnHomaPage': instance.featuredProductsOnHomaPage,
      'IncludeInTopMenu': instance.includeInTopMenu,
      'Published': instance.published,
      'DisplayOrder': instance.displayOrder,
      'Flag': instance.flag,
      'FlagStyle': instance.flagStyle,
      'Icon': instance.icon,
      'HideOnCatalog': instance.hideOnCatalog,
      'ShowOnSearchBox': instance.showOnSearchBox,
      'SearchBoxDisplayOrder': instance.searchBoxDisplayOrder,
      'Id': instance.id,
    };
