import '../../02_domain/entities/type_blood_entity.dart';

abstract class TypeBloodDatasources {
  Future<TypeBloodEntity> getAllTypeBlood();
}

class TypeBloodDatasourcesImpl extends TypeBloodDatasources {
  @override
  Future<TypeBloodEntity> getAllTypeBlood() {
    //Implementar toda a logica necessária

    // TODO: implement getAllTypeBlood
    throw UnimplementedError();
  }
}
