import 'package:json_annotation/json_annotation.dart';

part 'warehouse_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class WarehouseDto {
  String name;
  String adminComment;
  String id;

  WarehouseDto({
    this.name,
    this.adminComment,
    this.id,
  });

  factory WarehouseDto.fromJson(Map<String, dynamic> json) =>
      _$WarehouseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WarehouseDtoToJson(this);
}
