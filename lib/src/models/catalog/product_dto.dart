import 'package:grandnode_odata_client/src/models/catalog/category_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/manufacturer_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/specification_attribute_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_tier_price_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_warehouse_inventory_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_attribute_mapping_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_attribute_combination_dto.dart';
import 'package:grandnode_odata_client/src/models/common/picture_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductDto {
  String odataContext;
  String productType;
  String parentGroupedProductId;
  bool visibleIndividually;
  String name;
  String seName;
  String shortDescription;
  String fullDescription;
  String adminComment;
  String productTemplateId;
  String vendorId;
  bool showOnHomePage;
  String metaKeywords;
  String metaDescription;
  String metaTitle;
  bool allowCustomerReviews;
  int approvedRatingSum;
  int notApprovedRatingSum;
  int approvedTotalReviews;
  int notApprovedTotalReviews;
  String externalId;
  String sku;
  String manufacturerPartNumber;
  String gtin;
  bool isGiftCard;
  String giftCardType;
  double overriddenGiftCardAmount;
  bool requireOtherProducts;
  String requiredProductIds;
  bool automaticallyAddRequiredProducts;
  bool isDownload;
  String downloadId;
  bool unlimitedDownloads;
  String downloadActivationType;
  int maxNumberOfDownloads;
  int downloadExpirationDays;
  bool hasSampleDownload;
  String sampleDownloadId;
  bool hasUserAgreement;
  String userAgreementText;
  bool isRecurring;
  int recurringCycleLength;
  int recurringTotalCycles;
  String recurringCyclePeriod;
  bool incBothDate;
  int interval;
  String intervalUnitType;
  bool isShipEnabled;
  bool isFreeShipping;
  bool shipSeparately;
  int additionalShippingCharge;
  String deliveryDateId;
  bool isTaxExempt;
  String taxCategoryId;
  bool isTele;
  bool useMultipleWarehouses;
  String warehouseId;
  int stockQuantity;
  String manageInventoryMethod;
  bool displayStockAvailability;
  bool displayStockQuantity;
  int minStockQuantity;
  bool lowStock;
  String lowStockActivity;
  int notifyAdminForQuantityBelow;
  String backorderMode;
  bool allowBackInStockSubscriptions;
  int orderMinimumQuantity;
  int orderMaximumQuantity;
  String allowedQuantities;
  bool allowAddingOnlyExistingAttributeCombinations;
  bool notReturnable;
  bool disableBuyButton;
  bool disableWishlistButton;
  bool availableForPreOrder;
  DateTime preOrderAvailabilityStartDateTimeUtc;
  bool callForPrice;
  int price;
  int oldPrice;
  int catalogPrice;
  int productCost;
  bool customerEntersPrice;
  int minimumCustomerEnteredPrice;
  int maximumCustomerEnteredPrice;
  bool basepriceEnabled;
  int basepriceAmount;
  String basepriceUnitId;
  int basepriceBaseAmount;
  String basepriceBaseUnitId;
  String unitId;
  bool markAsNew;
  DateTime markAsNewStartDateTimeUtc;
  DateTime markAsNewEndDateTimeUtc;
  int weight;
  int length;
  int width;
  int height;
  DateTime availableStartDateTimeUtc;
  DateTime availableEndDateTimeUtc;
  int startPrice;
  bool auctionEnded;
  int displayOrder;
  int displayOrderCategory;
  int displayOrderManufacturer;
  bool published;
  DateTime createdOnUtc;
  DateTime updatedOnUtc;
  int sold;
  int viewed;
  int onSale;
  String flag;
  List<String> tags;
  List<String> appliedDiscounts;
  String id;
  List<CategoryDto> categories;
  List<ManufacturerDto> manufacturers;
  List<PictureDto> pictures;
  List<SpecificationAttributeDto> specificationAttribute;
  List<ProductTierPriceDto> tierPrices;
  List<ProductWarehouseInventoryDto> warehouseInventory;
  List<ProductAttributeMappingDto> attributeMappings;
  List<ProductAttributeCombinationDto> attributeCombinations;

  ProductDto({
    this.odataContext,
    this.productType,
    this.parentGroupedProductId,
    this.visibleIndividually,
    this.name,
    this.seName,
    this.shortDescription,
    this.fullDescription,
    this.adminComment,
    this.productTemplateId,
    this.vendorId,
    this.showOnHomePage,
    this.metaKeywords,
    this.metaDescription,
    this.metaTitle,
    this.allowCustomerReviews,
    this.approvedRatingSum,
    this.notApprovedRatingSum,
    this.approvedTotalReviews,
    this.notApprovedTotalReviews,
    this.externalId,
    this.sku,
    this.manufacturerPartNumber,
    this.gtin,
    this.isGiftCard,
    this.giftCardType,
    this.overriddenGiftCardAmount,
    this.requireOtherProducts,
    this.requiredProductIds,
    this.automaticallyAddRequiredProducts,
    this.isDownload,
    this.downloadId,
    this.unlimitedDownloads,
    this.downloadActivationType,
    this.maxNumberOfDownloads,
    this.downloadExpirationDays,
    this.hasSampleDownload,
    this.sampleDownloadId,
    this.hasUserAgreement,
    this.userAgreementText,
    this.isRecurring,
    this.recurringCycleLength,
    this.recurringTotalCycles,
    this.recurringCyclePeriod,
    this.incBothDate,
    this.interval,
    this.intervalUnitType,
    this.isShipEnabled,
    this.isFreeShipping,
    this.shipSeparately,
    this.additionalShippingCharge,
    this.deliveryDateId,
    this.isTaxExempt,
    this.taxCategoryId,
    this.isTele,
    this.useMultipleWarehouses,
    this.warehouseId,
    this.stockQuantity,
    this.manageInventoryMethod,
    this.displayStockAvailability,
    this.displayStockQuantity,
    this.minStockQuantity,
    this.lowStock,
    this.lowStockActivity,
    this.notifyAdminForQuantityBelow,
    this.backorderMode,
    this.allowBackInStockSubscriptions,
    this.orderMinimumQuantity,
    this.orderMaximumQuantity,
    this.allowedQuantities,
    this.allowAddingOnlyExistingAttributeCombinations,
    this.notReturnable,
    this.disableBuyButton,
    this.disableWishlistButton,
    this.availableForPreOrder,
    this.preOrderAvailabilityStartDateTimeUtc,
    this.callForPrice,
    this.price,
    this.oldPrice,
    this.catalogPrice,
    this.productCost,
    this.customerEntersPrice,
    this.minimumCustomerEnteredPrice,
    this.maximumCustomerEnteredPrice,
    this.basepriceEnabled,
    this.basepriceAmount,
    this.basepriceUnitId,
    this.basepriceBaseAmount,
    this.basepriceBaseUnitId,
    this.unitId,
    this.markAsNew,
    this.markAsNewStartDateTimeUtc,
    this.markAsNewEndDateTimeUtc,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.availableStartDateTimeUtc,
    this.availableEndDateTimeUtc,
    this.startPrice,
    this.auctionEnded,
    this.displayOrder,
    this.displayOrderCategory,
    this.displayOrderManufacturer,
    this.published,
    this.createdOnUtc,
    this.updatedOnUtc,
    this.sold,
    this.viewed,
    this.onSale,
    this.flag,
    this.tags,
    this.appliedDiscounts,
    this.id,
    this.categories,
    this.manufacturers,
    this.pictures,
    this.specificationAttribute,
    this.tierPrices,
    this.warehouseInventory,
    this.attributeMappings,
    this.attributeCombinations,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}
