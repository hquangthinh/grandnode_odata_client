// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return OrderDto(
    orderGuid: json['OrderGuid'] as String,
    orderNumber: json['OrderNumber'] as int,
    storeId: json['StoreId'] as String,
    customerId: json['CustomerId'] as String,
    pickUpInStore: json['PickUpInStore'] as bool,
    orderStatusId: json['OrderStatusId'] as int,
    shippingStatusId: json['ShippingStatusId'] as int,
    paymentStatusId: json['PaymentStatusId'] as int,
    paymentMethodSystemName: json['PaymentMethodSystemName'] as String,
    customerCurrencyCode: json['CustomerCurrencyCode'] as String,
    currencyRate: json['CurrencyRate'] as int,
    customerTaxDisplayTypeId: json['CustomerTaxDisplayTypeId'] as int,
    vatNumber: json['VatNumber'] as String,
    vatNumberStatusId: json['VatNumberStatusId'] as int,
    companyName: json['CompanyName'] as String,
    customerEmail: json['CustomerEmail'] as String,
    firstName: json['FirstName'] as String,
    lastName: json['LastName'] as String,
    orderSubtotalInclTax: json['OrderSubtotalInclTax'] as int,
    orderSubtotalExclTax: json['OrderSubtotalExclTax'] as int,
    orderSubTotalDiscountInclTax: json['OrderSubTotalDiscountInclTax'] as int,
    orderSubTotalDiscountExclTax: json['OrderSubTotalDiscountExclTax'] as int,
    orderShippingInclTax: json['OrderShippingInclTax'] as int,
    orderShippingExclTax: json['OrderShippingExclTax'] as int,
    paymentMethodAdditionalFeeInclTax:
        json['PaymentMethodAdditionalFeeInclTax'] as int,
    paymentMethodAdditionalFeeExclTax:
        json['PaymentMethodAdditionalFeeExclTax'] as int,
    taxRates: json['TaxRates'] as String,
    orderTax: json['OrderTax'] as int,
    orderDiscount: json['OrderDiscount'] as int,
    orderTotal: json['OrderTotal'] as int,
    refundedAmount: json['RefundedAmount'] as int,
    rewardPointsWereAdded: json['RewardPointsWereAdded'] as bool,
    checkoutAttributeDescription:
        json['CheckoutAttributeDescription'] as String,
    checkoutAttributesXml: json['CheckoutAttributesXml'] as String,
    customerLanguageId: json['CustomerLanguageId'] as String,
    affiliateId: json['AffiliateId'] as String,
    customerIp: json['CustomerIp'] as String,
    allowStoringCreditCardNumber: json['AllowStoringCreditCardNumber'] as bool,
    cardType: json['CardType'] as String,
    cardName: json['CardName'] as String,
    cardNumber: json['CardNumber'] as String,
    maskedCreditCardNumber: json['MaskedCreditCardNumber'] as String,
    cardCvv2: json['CardCvv2'] as String,
    cardExpirationMonth: json['CardExpirationMonth'] as String,
    cardExpirationYear: json['CardExpirationYear'] as String,
    authorizationTransactionId: json['AuthorizationTransactionId'] as String,
    authorizationTransactionCode:
        json['AuthorizationTransactionCode'] as String,
    authorizationTransactionResult:
        json['AuthorizationTransactionResult'] as String,
    captureTransactionId: json['CaptureTransactionId'] as String,
    captureTransactionResult: json['CaptureTransactionResult'] as String,
    subscriptionTransactionId: json['SubscriptionTransactionId'] as String,
    paidDateUtc: json['PaidDateUtc'] == null
        ? null
        : DateTime.parse(json['PaidDateUtc'] as String),
    shippingMethod: json['ShippingMethod'] as String,
    shippingRateComputationMethodSystemName:
        json['ShippingRateComputationMethodSystemName'] as String,
    customValuesXml: json['CustomValuesXml'] as String,
    deleted: json['Deleted'] as bool,
    createdOnUtc: json['CreatedOnUtc'] == null
        ? null
        : DateTime.parse(json['CreatedOnUtc'] as String),
    imported: json['Imported'] as bool,
    urlReferrer: json['UrlReferrer'] as String,
    shippingOptionAttributeDescription:
        json['ShippingOptionAttributeDescription'] as String,
    shippingOptionAttributeXml: json['ShippingOptionAttributeXml'] as String,
    id: json['Id'] as String,
    billingAddress: json['BillingAddress'] == null
        ? null
        : AddressDto.fromJson(json['BillingAddress'] as Map<String, dynamic>),
    shippingAddress: json['ShippingAddress'] == null
        ? null
        : AddressDto.fromJson(json['ShippingAddress'] as Map<String, dynamic>),
    orderItems: (json['OrderItems'] as List)
        ?.map((e) =>
            e == null ? null : OrderItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$OrderDtoToJson(OrderDto instance) => <String, dynamic>{
      'OrderGuid': instance.orderGuid,
      'OrderNumber': instance.orderNumber,
      'StoreId': instance.storeId,
      'CustomerId': instance.customerId,
      'PickUpInStore': instance.pickUpInStore,
      'OrderStatusId': instance.orderStatusId,
      'ShippingStatusId': instance.shippingStatusId,
      'PaymentStatusId': instance.paymentStatusId,
      'PaymentMethodSystemName': instance.paymentMethodSystemName,
      'CustomerCurrencyCode': instance.customerCurrencyCode,
      'CurrencyRate': instance.currencyRate,
      'CustomerTaxDisplayTypeId': instance.customerTaxDisplayTypeId,
      'VatNumber': instance.vatNumber,
      'VatNumberStatusId': instance.vatNumberStatusId,
      'CompanyName': instance.companyName,
      'CustomerEmail': instance.customerEmail,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'OrderSubtotalInclTax': instance.orderSubtotalInclTax,
      'OrderSubtotalExclTax': instance.orderSubtotalExclTax,
      'OrderSubTotalDiscountInclTax': instance.orderSubTotalDiscountInclTax,
      'OrderSubTotalDiscountExclTax': instance.orderSubTotalDiscountExclTax,
      'OrderShippingInclTax': instance.orderShippingInclTax,
      'OrderShippingExclTax': instance.orderShippingExclTax,
      'PaymentMethodAdditionalFeeInclTax':
          instance.paymentMethodAdditionalFeeInclTax,
      'PaymentMethodAdditionalFeeExclTax':
          instance.paymentMethodAdditionalFeeExclTax,
      'TaxRates': instance.taxRates,
      'OrderTax': instance.orderTax,
      'OrderDiscount': instance.orderDiscount,
      'OrderTotal': instance.orderTotal,
      'RefundedAmount': instance.refundedAmount,
      'RewardPointsWereAdded': instance.rewardPointsWereAdded,
      'CheckoutAttributeDescription': instance.checkoutAttributeDescription,
      'CheckoutAttributesXml': instance.checkoutAttributesXml,
      'CustomerLanguageId': instance.customerLanguageId,
      'AffiliateId': instance.affiliateId,
      'CustomerIp': instance.customerIp,
      'AllowStoringCreditCardNumber': instance.allowStoringCreditCardNumber,
      'CardType': instance.cardType,
      'CardName': instance.cardName,
      'CardNumber': instance.cardNumber,
      'MaskedCreditCardNumber': instance.maskedCreditCardNumber,
      'CardCvv2': instance.cardCvv2,
      'CardExpirationMonth': instance.cardExpirationMonth,
      'CardExpirationYear': instance.cardExpirationYear,
      'AuthorizationTransactionId': instance.authorizationTransactionId,
      'AuthorizationTransactionCode': instance.authorizationTransactionCode,
      'AuthorizationTransactionResult': instance.authorizationTransactionResult,
      'CaptureTransactionId': instance.captureTransactionId,
      'CaptureTransactionResult': instance.captureTransactionResult,
      'SubscriptionTransactionId': instance.subscriptionTransactionId,
      'PaidDateUtc': instance.paidDateUtc?.toIso8601String(),
      'ShippingMethod': instance.shippingMethod,
      'ShippingRateComputationMethodSystemName':
          instance.shippingRateComputationMethodSystemName,
      'CustomValuesXml': instance.customValuesXml,
      'Deleted': instance.deleted,
      'CreatedOnUtc': instance.createdOnUtc?.toIso8601String(),
      'Imported': instance.imported,
      'UrlReferrer': instance.urlReferrer,
      'ShippingOptionAttributeDescription':
          instance.shippingOptionAttributeDescription,
      'ShippingOptionAttributeXml': instance.shippingOptionAttributeXml,
      'Id': instance.id,
      'BillingAddress': instance.billingAddress?.toJson(),
      'ShippingAddress': instance.shippingAddress?.toJson(),
      'OrderItems': instance.orderItems?.map((e) => e?.toJson())?.toList(),
    };
