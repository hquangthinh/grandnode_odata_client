import 'package:json_annotation/json_annotation.dart';

part 'manufacturer_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ManufacturerDto {
  String name;
  String seName;
  String description;
  String manufacturerTemplateId;
  String metaKeywords;
  String metaDescription;
  String metaTitle;
  String pictureId;
  int pageSize;
  bool allowCustomersToSelectPageSize;
  String pageSizeOptions;
  String priceRanges;
  bool showOnHomePage;
  bool featuredProductsOnHomaPage;
  bool includeInTopMenu;
  String icon;
  bool published;
  int displayOrder;
  String id;

  ManufacturerDto({
    this.name,
    this.seName,
    this.description,
    this.manufacturerTemplateId,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.pictureId,
    this.pageSize,
    this.allowCustomersToSelectPageSize,
    this.pageSizeOptions,
    this.priceRanges,
    this.showOnHomePage,
    this.featuredProductsOnHomaPage,
    this.includeInTopMenu,
    this.icon,
    this.published,
    this.displayOrder,
    this.id,
  });

  factory ManufacturerDto.fromJson(Map<String, dynamic> json) => _$ManufacturerDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturerDtoToJson(this);
}
