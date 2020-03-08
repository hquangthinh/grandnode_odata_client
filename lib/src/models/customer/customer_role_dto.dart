import 'package:json_annotation/json_annotation.dart';

part 'customer_role_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CustomerRoleDto {
  String name;
  bool freeShipping;
  bool taxExempt;
  bool active;
  bool isSystemRole;
  String systemName;
  bool enablePasswordLifetime;
  String id;

  CustomerRoleDto({
    this.name,
    this.freeShipping,
    this.taxExempt,
    this.active,
    this.isSystemRole,
    this.systemName,
    this.enablePasswordLifetime,
    this.id,
  });

  factory CustomerRoleDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerRoleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerRoleDtoToJson(this);
}
