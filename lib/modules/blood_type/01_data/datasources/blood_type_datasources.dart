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

    final response2 = await Supabase.instance.client.from('users').select();

    final response = await client.from('type_blood').select() as List<dynamic>;
    List<BloodTypeEntity> listBloodTypes = [];
    for (var element in response) {
      listBloodTypes.add(BloodTypeModel.fromJson(element));
    }
    return listBloodTypes;
  }
}
