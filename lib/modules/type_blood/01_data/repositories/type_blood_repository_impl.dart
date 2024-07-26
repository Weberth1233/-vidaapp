import 'package:dartz/dartz.dart';

import 'package:vidaapp/modules/core_modules/failures/failures.dart';

import 'package:vidaapp/modules/type_blood/02_domain/entities/type_blood_entity.dart';

import '../../02_domain/repositories/type_blood_repository.dart';

//Uso a interface criada no dominio aqui na camada de data
class TypeBloodRepositoryImpl extends TypeBloodRepository {
  @override
  Future<Either<Failure, List<TypeBloodEntity>>> getAll() {
    // TODO: implement getAll
    return super.getAll();
  }
}
