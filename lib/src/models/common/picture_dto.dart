// To parse this JSON data, do
//
//     final pictureDto = pictureDtoFromJson(jsonString);

import 'dart:convert';

PictureDto pictureDtoFromJson(String str) =>
    PictureDto.fromJson(json.decode(str));

String pictureDtoToJson(PictureDto data) => json.encode(data.toJson());

class PictureDto {
  String pictureId;
  int displayOrder;
  String mimeType;
  String seoFilename;
  String altAttribute;
  String titleAttribute;

  PictureDto({
    this.pictureId,
    this.displayOrder,
    this.mimeType,
    this.seoFilename,
    this.altAttribute,
    this.titleAttribute,
  });

  factory PictureDto.fromJson(Map<String, dynamic> json) => PictureDto(
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
