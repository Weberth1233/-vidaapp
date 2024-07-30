import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/blood_type/01_data/models/blood_type_model.dart';
import 'package:vidaapp/modules/blood_type/02_domain/entities/blood_type_entity.dart';
import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';
import 'package:vidaapp/modules/blood_type/02_domain/repositories/blood_type_repository.dart';
import 'package:vidaapp/modules/00_core_modules/use_case.dart';

class BloodTypeUsecase
    implements UseCase<List<BloodTypeEntity>, NoParams, BloodTypeModel> {
  final BloodTypeRepository<BloodTypeModel> bloodTypeRepository;

  BloodTypeUsecase({required this.bloodTypeRepository});

  @override
  Future<Either<Failure, List<BloodTypeEntity>>> call(
      GetAllParams<BloodTypeModel> params) async {
    try {
      //Criar nova funcionalide
      // bloodTypeRepository.imprimir();

      final result =
          await bloodTypeRepository.getAll(params.table, params.fromMap);
      return result.fold(
        (failure) => Left(failure),
        (typeBloods) => Right(typeBloods),
      );
    } on Exception catch (_) {
      return Left(ServerFailure());
    }
  }
}
