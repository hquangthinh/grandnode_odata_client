import 'package:grandnode_odata_client/src/models/customer/address_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vendor_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class VendorDto {
  String name;
  String seName;
  String pictureId;
  String email;
  String description;
  String storeId;
  String adminComment;
  bool active;
  bool deleted;
  int displayOrder;
  bool allowCustomerReviews;
  int approvedRatingSum;
  int notApprovedRatingSum;
  int approvedTotalReviews;
  int notApprovedTotalReviews;
  String id;
  AddressDto address;

  VendorDto({
    this.name,
    this.seName,
    this.pictureId,
    this.email,
    this.description,
    this.storeId,
    this.adminComment,
    this.active,
    this.deleted,
    this.displayOrder,
    this.allowCustomerReviews,
    this.approvedRatingSum,
    this.notApprovedRatingSum,
    this.approvedTotalReviews,
    this.notApprovedTotalReviews,
    this.id,
    this.address,
  });

  factory VendorDto.fromJson(Map<String, dynamic> json) => _$VendorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$VendorDtoToJson(this);
}
