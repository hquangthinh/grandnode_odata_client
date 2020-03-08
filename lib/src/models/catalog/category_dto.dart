import 'package:json_annotation/json_annotation.dart';

part 'category_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CategoryDto {
  String name;
  String description;
  String categoryTemplateId;
  String metaKeywords;
  String metaDescription;
  String metaTitle;
  String seName;
  String parentCategoryId;
  String pictureId;
  int pageSize;
  bool allowCustomersToSelectPageSize;
  String pageSizeOptions;
  String priceRanges;
  bool showOnHomePage;
  bool featuredProductsOnHomaPage;
  bool includeInTopMenu;
  bool published;
  int displayOrder;
  String flag;
  String flagStyle;
  String icon;
  bool hideOnCatalog;
  bool showOnSearchBox;
  int searchBoxDisplayOrder;
  String id;

  CategoryDto({
    this.name,
    this.description,
    this.categoryTemplateId,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.seName,
    this.parentCategoryId,
    this.pictureId,
    this.pageSize,
    this.allowCustomersToSelectPageSize,
    this.pageSizeOptions,
    this.priceRanges,
    this.showOnHomePage,
    this.featuredProductsOnHomaPage,
    this.includeInTopMenu,
    this.published,
    this.displayOrder,
    this.flag,
    this.flagStyle,
    this.icon,
    this.hideOnCatalog,
    this.showOnSearchBox,
    this.searchBoxDisplayOrder,
    this.id,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);
}
