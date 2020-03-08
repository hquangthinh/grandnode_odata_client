import 'package:grandnode_odata_client/src/models/customer/address_dto.dart';
import 'package:grandnode_odata_client/src/models/order/order_item_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal, explicitToJson: true)
class OrderDto {
  String orderGuid;
  int orderNumber;
  String storeId;
  String customerId;
  bool pickUpInStore;
  int orderStatusId;
  int shippingStatusId;
  int paymentStatusId;
  String paymentMethodSystemName;
  String customerCurrencyCode;
  int currencyRate;
  int customerTaxDisplayTypeId;
  String vatNumber;
  int vatNumberStatusId;
  String companyName;
  String customerEmail;
  String firstName;
  String lastName;
  int orderSubtotalInclTax;
  int orderSubtotalExclTax;
  int orderSubTotalDiscountInclTax;
  int orderSubTotalDiscountExclTax;
  int orderShippingInclTax;
  int orderShippingExclTax;
  int paymentMethodAdditionalFeeInclTax;
  int paymentMethodAdditionalFeeExclTax;
  String taxRates;
  int orderTax;
  int orderDiscount;
  int orderTotal;
  int refundedAmount;
  bool rewardPointsWereAdded;
  String checkoutAttributeDescription;
  String checkoutAttributesXml;
  String customerLanguageId;
  String affiliateId;
  String customerIp;
  bool allowStoringCreditCardNumber;
  String cardType;
  String cardName;
  String cardNumber;
  String maskedCreditCardNumber;
  String cardCvv2;
  String cardExpirationMonth;
  String cardExpirationYear;
  String authorizationTransactionId;
  String authorizationTransactionCode;
  String authorizationTransactionResult;
  String captureTransactionId;
  String captureTransactionResult;
  String subscriptionTransactionId;
  DateTime paidDateUtc;
  String shippingMethod;
  String shippingRateComputationMethodSystemName;
  String customValuesXml;
  bool deleted;
  DateTime createdOnUtc;
  bool imported;
  String urlReferrer;
  String shippingOptionAttributeDescription;
  String shippingOptionAttributeXml;
  String id;
  AddressDto billingAddress;
  AddressDto shippingAddress;
  List<OrderItemDto> orderItems;

  OrderDto({
    this.orderGuid,
    this.orderNumber,
    this.storeId,
    this.customerId,
    this.pickUpInStore,
    this.orderStatusId,
    this.shippingStatusId,
    this.paymentStatusId,
    this.paymentMethodSystemName,
    this.customerCurrencyCode,
    this.currencyRate,
    this.customerTaxDisplayTypeId,
    this.vatNumber,
    this.vatNumberStatusId,
    this.companyName,
    this.customerEmail,
    this.firstName,
    this.lastName,
    this.orderSubtotalInclTax,
    this.orderSubtotalExclTax,
    this.orderSubTotalDiscountInclTax,
    this.orderSubTotalDiscountExclTax,
    this.orderShippingInclTax,
    this.orderShippingExclTax,
    this.paymentMethodAdditionalFeeInclTax,
    this.paymentMethodAdditionalFeeExclTax,
    this.taxRates,
    this.orderTax,
    this.orderDiscount,
    this.orderTotal,
    this.refundedAmount,
    this.rewardPointsWereAdded,
    this.checkoutAttributeDescription,
    this.checkoutAttributesXml,
    this.customerLanguageId,
    this.affiliateId,
    this.customerIp,
    this.allowStoringCreditCardNumber,
    this.cardType,
    this.cardName,
    this.cardNumber,
    this.maskedCreditCardNumber,
    this.cardCvv2,
    this.cardExpirationMonth,
    this.cardExpirationYear,
    this.authorizationTransactionId,
    this.authorizationTransactionCode,
    this.authorizationTransactionResult,
    this.captureTransactionId,
    this.captureTransactionResult,
    this.subscriptionTransactionId,
    this.paidDateUtc,
    this.shippingMethod,
    this.shippingRateComputationMethodSystemName,
    this.customValuesXml,
    this.deleted,
    this.createdOnUtc,
    this.imported,
    this.urlReferrer,
    this.shippingOptionAttributeDescription,
    this.shippingOptionAttributeXml,
    this.id,
    this.billingAddress,
    this.shippingAddress,
    this.orderItems,
  });

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDtoToJson(this);
}
