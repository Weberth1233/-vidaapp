import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/blood_type/01_data/datasources/blood_type_datasources.dart';

import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';

import 'package:vidaapp/modules/blood_type/02_domain/entities/blood_type_entity.dart';

import '../../02_domain/repositories/blood_type_repository.dart';
import '../models/blood_type_model.dart';

//Uso a interface criada no dominio aqui na camada de data
class BloodTypeRepositoryImpl extends BloodTypeRepository<BloodTypeModel> {
  final BloodTypeDatasources bloodTypeDatasources;

  BloodTypeRepositoryImpl({required this.bloodTypeDatasources});

  @override
  Future<Either<Failure, List<BloodTypeEntity>>> getAll() async {
    try {
      final result =
          await bloodTypeDatasources.get('type_blood', BloodTypeModel.fromMap);
      return right(result);
    } on ServerFailure catch (_) {
      return left(ServerFailure());
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
