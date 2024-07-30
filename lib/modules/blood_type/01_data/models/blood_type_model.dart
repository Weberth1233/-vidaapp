import 'dart:convert';

import 'package:vidaapp/modules/00_core_modules/infra/base_model.dart';
import 'package:vidaapp/modules/blood_type/02_domain/entities/blood_type_entity.dart';

class BloodTypeModel extends BloodTypeEntity implements BaseModel {
  BloodTypeModel({
    required super.id,
    required super.createdAt,
    required super.name,
  });

  // Convert a BloodTypeModel object to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'name': name,
    };
  }

  // Create a BloodTypeModel object from a map
  factory BloodTypeModel.fromMap(Map<String, dynamic> map) {
    return BloodTypeModel(
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
      name: map['name'],
    );
  }

  // Convert a BloodTypeModel object to JSON
  String toJson() => json.encode(toMap());

  // Create a BloodTypeModel object from JSON
  factory BloodTypeModel.fromJson(String source) =>
      BloodTypeModel.fromMap(json.decode(source));
}
