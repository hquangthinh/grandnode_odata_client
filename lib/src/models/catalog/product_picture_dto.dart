// To parse this JSON data, do
//
//     final productPictureDto = productPictureDtoFromJson(jsonString);

import 'dart:convert';

ProductPictureDto productPictureDtoFromJson(String str) =>
    ProductPictureDto.fromJson(json.decode(str));

String productPictureDtoToJson(ProductPictureDto data) =>
    json.encode(data.toJson());

class ProductPictureDto {
  String pictureId;
  int displayOrder;
  String mimeType;
  String seoFilename;
  String altAttribute;
  String titleAttribute;

  ProductPictureDto({
    this.pictureId,
    this.displayOrder,
    this.mimeType,
    this.seoFilename,
    this.altAttribute,
    this.titleAttribute,
  });

  factory ProductPictureDto.fromJson(Map<String, dynamic> json) =>
      ProductPictureDto(
        pictureId: json["PictureId"],
        displayOrder: json["DisplayOrder"],
        mimeType: json["MimeType"],
        seoFilename: json["SeoFilename"],
        altAttribute: json["AltAttribute"],
        titleAttribute: json["TitleAttribute"],
      );

  Map<String, dynamic> toJson() => {
        "PictureId": pictureId,
        "DisplayOrder": displayOrder,
        "MimeType": mimeType,
        "SeoFilename": seoFilename,
        "AltAttribute": altAttribute,
        "TitleAttribute": titleAttribute,
      };
}
