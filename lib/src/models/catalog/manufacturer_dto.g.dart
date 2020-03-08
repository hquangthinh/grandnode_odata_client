// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerDto _$ManufacturerDtoFromJson(Map<String, dynamic> json) {
  return ManufacturerDto(
    name: json['Name'] as String,
    seName: json['SeName'] as String,
    description: json['Description'] as String,
    manufacturerTemplateId: json['ManufacturerTemplateId'] as String,
    metaKeywords: json['MetaKeywords'] as String,
    metaDescription: json['MetaDescription'] as String,
    metaTitle: json['MetaTitle'] as String,
    pictureId: json['PictureId'] as String,
    pageSize: json['PageSize'] as int,
    allowCustomersToSelectPageSize:
        json['AllowCustomersToSelectPageSize'] as bool,
    pageSizeOptions: json['PageSizeOptions'] as String,
    priceRanges: json['PriceRanges'] as String,
    showOnHomePage: json['ShowOnHomePage'] as bool,
    featuredProductsOnHomaPage: json['FeaturedProductsOnHomaPage'] as bool,
    includeInTopMenu: json['IncludeInTopMenu'] as bool,
    icon: json['Icon'] as String,
    published: json['Published'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    id: json['Id'] as String,
  );
}

Map<String, dynamic> _$ManufacturerDtoToJson(ManufacturerDto instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'SeName': instance.seName,
      'Description': instance.description,
      'ManufacturerTemplateId': instance.manufacturerTemplateId,
      'MetaKeywords': instance.metaKeywords,
      'MetaDescription': instance.metaDescription,
      'MetaTitle': instance.metaTitle,
      'PictureId': instance.pictureId,
      'PageSize': instance.pageSize,
      'AllowCustomersToSelectPageSize': instance.allowCustomersToSelectPageSize,
      'PageSizeOptions': instance.pageSizeOptions,
      'PriceRanges': instance.priceRanges,
      'ShowOnHomePage': instance.showOnHomePage,
      'FeaturedProductsOnHomaPage': instance.featuredProductsOnHomaPage,
      'IncludeInTopMenu': instance.includeInTopMenu,
      'Icon': instance.icon,
      'Published': instance.published,
      'DisplayOrder': instance.displayOrder,
      'Id': instance.id,
    };
