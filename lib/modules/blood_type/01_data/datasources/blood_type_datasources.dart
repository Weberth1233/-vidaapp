import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/modules/blood_type/01_data/models/blood_type_model.dart';

import '../../02_domain/entities/blood_type_entity.dart';

abstract class BloodTypeDatasources {
  Future<List<BloodTypeEntity>> getAllTypeBlood();
}

class BloodTypeDatasourcesImpl extends BloodTypeDatasources {
  final SupabaseClient client;

  BloodTypeDatasourcesImpl({required this.client});

  @override
  Future<List<BloodTypeEntity>> getAllTypeBlood() async {
    //Implementar toda a logica necessária
    try {
      final response =
          await client.from('type_blood').select() as List<dynamic>;
      return response.map((json) => BloodTypeModel.fromMap(json)).toList();
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('Failed to fetch bloodTypes $e');
    }
  }
}
