// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return ProductDto(
    odataContext: json['OdataContext'] as String,
    productType: json['ProductType'] as String,
    parentGroupedProductId: json['ParentGroupedProductId'] as String,
    visibleIndividually: json['VisibleIndividually'] as bool,
    name: json['Name'] as String,
    seName: json['SeName'] as String,
    shortDescription: json['ShortDescription'] as String,
    fullDescription: json['FullDescription'] as String,
    adminComment: json['AdminComment'] as String,
    productTemplateId: json['ProductTemplateId'] as String,
    vendorId: json['VendorId'] as String,
    showOnHomePage: json['ShowOnHomePage'] as bool,
    metaKeywords: json['MetaKeywords'] as String,
    metaDescription: json['MetaDescription'] as String,
    metaTitle: json['MetaTitle'] as String,
    allowCustomerReviews: json['AllowCustomerReviews'] as bool,
    approvedRatingSum: json['ApprovedRatingSum'] as int,
    notApprovedRatingSum: json['NotApprovedRatingSum'] as int,
    approvedTotalReviews: json['ApprovedTotalReviews'] as int,
    notApprovedTotalReviews: json['NotApprovedTotalReviews'] as int,
    externalId: json['ExternalId'] as String,
    sku: json['Sku'] as String,
    manufacturerPartNumber: json['ManufacturerPartNumber'] as String,
    gtin: json['Gtin'] as String,
    isGiftCard: json['IsGiftCard'] as bool,
    giftCardType: json['GiftCardType'] as String,
    overriddenGiftCardAmount:
        (json['OverriddenGiftCardAmount'] as num)?.toDouble(),
    requireOtherProducts: json['RequireOtherProducts'] as bool,
    requiredProductIds: json['RequiredProductIds'] as String,
    automaticallyAddRequiredProducts:
        json['AutomaticallyAddRequiredProducts'] as bool,
    isDownload: json['IsDownload'] as bool,
    downloadId: json['DownloadId'] as String,
    unlimitedDownloads: json['UnlimitedDownloads'] as bool,
    downloadActivationType: json['DownloadActivationType'] as String,
    maxNumberOfDownloads: json['MaxNumberOfDownloads'] as int,
    downloadExpirationDays: json['DownloadExpirationDays'] as int,
    hasSampleDownload: json['HasSampleDownload'] as bool,
    sampleDownloadId: json['SampleDownloadId'] as String,
    hasUserAgreement: json['HasUserAgreement'] as bool,
    userAgreementText: json['UserAgreementText'] as String,
    isRecurring: json['IsRecurring'] as bool,
    recurringCycleLength: json['RecurringCycleLength'] as int,
    recurringTotalCycles: json['RecurringTotalCycles'] as int,
    recurringCyclePeriod: json['RecurringCyclePeriod'] as String,
    incBothDate: json['IncBothDate'] as bool,
    interval: json['Interval'] as int,
    intervalUnitType: json['IntervalUnitType'] as String,
    isShipEnabled: json['IsShipEnabled'] as bool,
    isFreeShipping: json['IsFreeShipping'] as bool,
    shipSeparately: json['ShipSeparately'] as bool,
    additionalShippingCharge: json['AdditionalShippingCharge'] as int,
    deliveryDateId: json['DeliveryDateId'] as String,
    isTaxExempt: json['IsTaxExempt'] as bool,
    taxCategoryId: json['TaxCategoryId'] as String,
    isTele: json['IsTele'] as bool,
    useMultipleWarehouses: json['UseMultipleWarehouses'] as bool,
    warehouseId: json['WarehouseId'] as String,
    stockQuantity: json['StockQuantity'] as int,
    manageInventoryMethod: json['ManageInventoryMethod'] as String,
    displayStockAvailability: json['DisplayStockAvailability'] as bool,
    displayStockQuantity: json['DisplayStockQuantity'] as bool,
    minStockQuantity: json['MinStockQuantity'] as int,
    lowStock: json['LowStock'] as bool,
    lowStockActivity: json['LowStockActivity'] as String,
    notifyAdminForQuantityBelow: json['NotifyAdminForQuantityBelow'] as int,
    backorderMode: json['BackorderMode'] as String,
    allowBackInStockSubscriptions:
        json['AllowBackInStockSubscriptions'] as bool,
    orderMinimumQuantity: json['OrderMinimumQuantity'] as int,
    orderMaximumQuantity: json['OrderMaximumQuantity'] as int,
    allowedQuantities: json['AllowedQuantities'] as String,
    allowAddingOnlyExistingAttributeCombinations:
        json['AllowAddingOnlyExistingAttributeCombinations'] as bool,
    notReturnable: json['NotReturnable'] as bool,
    disableBuyButton: json['DisableBuyButton'] as bool,
    disableWishlistButton: json['DisableWishlistButton'] as bool,
    availableForPreOrder: json['AvailableForPreOrder'] as bool,
    preOrderAvailabilityStartDateTimeUtc:
        json['PreOrderAvailabilityStartDateTimeUtc'] == null
            ? null
            : DateTime.parse(
                json['PreOrderAvailabilityStartDateTimeUtc'] as String),
    callForPrice: json['CallForPrice'] as bool,
    price: json['Price'] as int,
    oldPrice: json['OldPrice'] as int,
    catalogPrice: json['CatalogPrice'] as int,
    productCost: json['ProductCost'] as int,
    customerEntersPrice: json['CustomerEntersPrice'] as bool,
    minimumCustomerEnteredPrice: json['MinimumCustomerEnteredPrice'] as int,
    maximumCustomerEnteredPrice: json['MaximumCustomerEnteredPrice'] as int,
    basepriceEnabled: json['BasepriceEnabled'] as bool,
    basepriceAmount: json['BasepriceAmount'] as int,
    basepriceUnitId: json['BasepriceUnitId'] as String,
    basepriceBaseAmount: json['BasepriceBaseAmount'] as int,
    basepriceBaseUnitId: json['BasepriceBaseUnitId'] as String,
    unitId: json['UnitId'] as String,
    markAsNew: json['MarkAsNew'] as bool,
    markAsNewStartDateTimeUtc: json['MarkAsNewStartDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['MarkAsNewStartDateTimeUtc'] as String),
    markAsNewEndDateTimeUtc: json['MarkAsNewEndDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['MarkAsNewEndDateTimeUtc'] as String),
    weight: json['Weight'] as int,
    length: json['Length'] as int,
    width: json['Width'] as int,
    height: json['Height'] as int,
    availableStartDateTimeUtc: json['AvailableStartDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['AvailableStartDateTimeUtc'] as String),
    availableEndDateTimeUtc: json['AvailableEndDateTimeUtc'] == null
        ? null
        : DateTime.parse(json['AvailableEndDateTimeUtc'] as String),
    startPrice: json['StartPrice'] as int,
    auctionEnded: json['AuctionEnded'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    displayOrderCategory: json['DisplayOrderCategory'] as int,
    displayOrderManufacturer: json['DisplayOrderManufacturer'] as int,
    published: json['Published'] as bool,
    createdOnUtc: json['CreatedOnUtc'] == null
        ? null
        : DateTime.parse(json['CreatedOnUtc'] as String),
    updatedOnUtc: json['UpdatedOnUtc'] == null
        ? null
        : DateTime.parse(json['UpdatedOnUtc'] as String),
    sold: json['Sold'] as int,
    viewed: json['Viewed'] as int,
    onSale: json['OnSale'] as int,
    flag: json['Flag'] as String,
    tags: (json['Tags'] as List)?.map((e) => e as String)?.toList(),
    appliedDiscounts:
        (json['AppliedDiscounts'] as List)?.map((e) => e as String)?.toList(),
    id: json['Id'] as String,
    categories: (json['Categories'] as List)
        ?.map((e) =>
            e == null ? null : CategoryDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    manufacturers: (json['Manufacturers'] as List)
        ?.map((e) => e == null
            ? null
            : ManufacturerDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pictures: (json['Pictures'] as List)
        ?.map((e) =>
            e == null ? null : PictureDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    specificationAttribute: (json['SpecificationAttribute'] as List)
        ?.map((e) => e == null
            ? null
            : SpecificationAttributeDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tierPrices: (json['TierPrices'] as List)
        ?.map((e) => e == null
            ? null
            : ProductTierPriceDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    warehouseInventory: (json['WarehouseInventory'] as List)
        ?.map((e) => e == null
            ? null
            : ProductWarehouseInventoryDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attributeMappings: (json['AttributeMappings'] as List)
        ?.map((e) => e == null
            ? null
            : ProductAttributeMappingDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attributeCombinations: (json['AttributeCombinations'] as List)
        ?.map((e) => e == null
            ? null
            : ProductAttributeCombinationDto.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'OdataContext': instance.odataContext,
      'ProductType': instance.productType,
      'ParentGroupedProductId': instance.parentGroupedProductId,
      'VisibleIndividually': instance.visibleIndividually,
      'Name': instance.name,
      'SeName': instance.seName,
      'ShortDescription': instance.shortDescription,
      'FullDescription': instance.fullDescription,
      'AdminComment': instance.adminComment,
      'ProductTemplateId': instance.productTemplateId,
      'VendorId': instance.vendorId,
      'ShowOnHomePage': instance.showOnHomePage,
      'MetaKeywords': instance.metaKeywords,
      'MetaDescription': instance.metaDescription,
      'MetaTitle': instance.metaTitle,
      'AllowCustomerReviews': instance.allowCustomerReviews,
      'ApprovedRatingSum': instance.approvedRatingSum,
      'NotApprovedRatingSum': instance.notApprovedRatingSum,
      'ApprovedTotalReviews': instance.approvedTotalReviews,
      'NotApprovedTotalReviews': instance.notApprovedTotalReviews,
      'ExternalId': instance.externalId,
      'Sku': instance.sku,
      'ManufacturerPartNumber': instance.manufacturerPartNumber,
      'Gtin': instance.gtin,
      'IsGiftCard': instance.isGiftCard,
      'GiftCardType': instance.giftCardType,
      'OverriddenGiftCardAmount': instance.overriddenGiftCardAmount,
      'RequireOtherProducts': instance.requireOtherProducts,
      'RequiredProductIds': instance.requiredProductIds,
      'AutomaticallyAddRequiredProducts':
          instance.automaticallyAddRequiredProducts,
      'IsDownload': instance.isDownload,
      'DownloadId': instance.downloadId,
      'UnlimitedDownloads': instance.unlimitedDownloads,
      'DownloadActivationType': instance.downloadActivationType,
      'MaxNumberOfDownloads': instance.maxNumberOfDownloads,
      'DownloadExpirationDays': instance.downloadExpirationDays,
      'HasSampleDownload': instance.hasSampleDownload,
      'SampleDownloadId': instance.sampleDownloadId,
      'HasUserAgreement': instance.hasUserAgreement,
      'UserAgreementText': instance.userAgreementText,
      'IsRecurring': instance.isRecurring,
      'RecurringCycleLength': instance.recurringCycleLength,
      'RecurringTotalCycles': instance.recurringTotalCycles,
      'RecurringCyclePeriod': instance.recurringCyclePeriod,
      'IncBothDate': instance.incBothDate,
      'Interval': instance.interval,
      'IntervalUnitType': instance.intervalUnitType,
      'IsShipEnabled': instance.isShipEnabled,
      'IsFreeShipping': instance.isFreeShipping,
      'ShipSeparately': instance.shipSeparately,
      'AdditionalShippingCharge': instance.additionalShippingCharge,
      'DeliveryDateId': instance.deliveryDateId,
      'IsTaxExempt': instance.isTaxExempt,
      'TaxCategoryId': instance.taxCategoryId,
      'IsTele': instance.isTele,
      'UseMultipleWarehouses': instance.useMultipleWarehouses,
      'WarehouseId': instance.warehouseId,
      'StockQuantity': instance.stockQuantity,
      'ManageInventoryMethod': instance.manageInventoryMethod,
      'DisplayStockAvailability': instance.displayStockAvailability,
      'DisplayStockQuantity': instance.displayStockQuantity,
      'MinStockQuantity': instance.minStockQuantity,
      'LowStock': instance.lowStock,
      'LowStockActivity': instance.lowStockActivity,
      'NotifyAdminForQuantityBelow': instance.notifyAdminForQuantityBelow,
      'BackorderMode': instance.backorderMode,
      'AllowBackInStockSubscriptions': instance.allowBackInStockSubscriptions,
      'OrderMinimumQuantity': instance.orderMinimumQuantity,
      'OrderMaximumQuantity': instance.orderMaximumQuantity,
      'AllowedQuantities': instance.allowedQuantities,
      'AllowAddingOnlyExistingAttributeCombinations':
          instance.allowAddingOnlyExistingAttributeCombinations,
      'NotReturnable': instance.notReturnable,
      'DisableBuyButton': instance.disableBuyButton,
      'DisableWishlistButton': instance.disableWishlistButton,
      'AvailableForPreOrder': instance.availableForPreOrder,
      'PreOrderAvailabilityStartDateTimeUtc':
          instance.preOrderAvailabilityStartDateTimeUtc?.toIso8601String(),
      'CallForPrice': instance.callForPrice,
      'Price': instance.price,
      'OldPrice': instance.oldPrice,
      'CatalogPrice': instance.catalogPrice,
      'ProductCost': instance.productCost,
      'CustomerEntersPrice': instance.customerEntersPrice,
      'MinimumCustomerEnteredPrice': instance.minimumCustomerEnteredPrice,
      'MaximumCustomerEnteredPrice': instance.maximumCustomerEnteredPrice,
      'BasepriceEnabled': instance.basepriceEnabled,
      'BasepriceAmount': instance.basepriceAmount,
      'BasepriceUnitId': instance.basepriceUnitId,
      'BasepriceBaseAmount': instance.basepriceBaseAmount,
      'BasepriceBaseUnitId': instance.basepriceBaseUnitId,
      'UnitId': instance.unitId,
      'MarkAsNew': instance.markAsNew,
      'MarkAsNewStartDateTimeUtc':
          instance.markAsNewStartDateTimeUtc?.toIso8601String(),
      'MarkAsNewEndDateTimeUtc':
          instance.markAsNewEndDateTimeUtc?.toIso8601String(),
      'Weight': instance.weight,
      'Length': instance.length,
      'Width': instance.width,
      'Height': instance.height,
      'AvailableStartDateTimeUtc':
          instance.availableStartDateTimeUtc?.toIso8601String(),
      'AvailableEndDateTimeUtc':
          instance.availableEndDateTimeUtc?.toIso8601String(),
      'StartPrice': instance.startPrice,
      'AuctionEnded': instance.auctionEnded,
      'DisplayOrder': instance.displayOrder,
      'DisplayOrderCategory': instance.displayOrderCategory,
      'DisplayOrderManufacturer': instance.displayOrderManufacturer,
      'Published': instance.published,
      'CreatedOnUtc': instance.createdOnUtc?.toIso8601String(),
      'UpdatedOnUtc': instance.updatedOnUtc?.toIso8601String(),
      'Sold': instance.sold,
      'Viewed': instance.viewed,
      'OnSale': instance.onSale,
      'Flag': instance.flag,
      'Tags': instance.tags,
      'AppliedDiscounts': instance.appliedDiscounts,
      'Id': instance.id,
      'Categories': instance.categories,
      'Manufacturers': instance.manufacturers,
      'Pictures': instance.pictures,
      'SpecificationAttribute': instance.specificationAttribute,
      'TierPrices': instance.tierPrices,
      'WarehouseInventory': instance.warehouseInventory,
      'AttributeMappings': instance.attributeMappings,
      'AttributeCombinations': instance.attributeCombinations,
    };
