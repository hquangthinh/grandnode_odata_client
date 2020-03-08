// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorDto _$VendorDtoFromJson(Map<String, dynamic> json) {
  return VendorDto(
    name: json['Name'] as String,
    seName: json['SeName'] as String,
    pictureId: json['PictureId'] as String,
    email: json['Email'] as String,
    description: json['Description'] as String,
    storeId: json['StoreId'] as String,
    adminComment: json['AdminComment'] as String,
    active: json['Active'] as bool,
    deleted: json['Deleted'] as bool,
    displayOrder: json['DisplayOrder'] as int,
    allowCustomerReviews: json['AllowCustomerReviews'] as bool,
    approvedRatingSum: json['ApprovedRatingSum'] as int,
    notApprovedRatingSum: json['NotApprovedRatingSum'] as int,
    approvedTotalReviews: json['ApprovedTotalReviews'] as int,
    notApprovedTotalReviews: json['NotApprovedTotalReviews'] as int,
    id: json['Id'] as String,
    address: json['Address'] == null
        ? null
        : AddressDto.fromJson(json['Address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VendorDtoToJson(VendorDto instance) => <String, dynamic>{
      'Name': instance.name,
      'SeName': instance.seName,
      'PictureId': instance.pictureId,
      'Email': instance.email,
      'Description': instance.description,
      'StoreId': instance.storeId,
      'AdminComment': instance.adminComment,
      'Active': instance.active,
      'Deleted': instance.deleted,
      'DisplayOrder': instance.displayOrder,
      'AllowCustomerReviews': instance.allowCustomerReviews,
      'ApprovedRatingSum': instance.approvedRatingSum,
      'NotApprovedRatingSum': instance.notApprovedRatingSum,
      'ApprovedTotalReviews': instance.approvedTotalReviews,
      'NotApprovedTotalReviews': instance.notApprovedTotalReviews,
      'Id': instance.id,
      'Address': instance.address,
    };
