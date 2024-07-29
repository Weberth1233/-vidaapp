import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/blood_type/02_domain/entities/blood_type_entity.dart';
import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';
import 'package:vidaapp/modules/blood_type/02_domain/repositories/blood_type_repository.dart';
import 'package:vidaapp/modules/00_core_modules/use_case.dart';

class BloodTypeUsecase implements UseCase<List<BloodTypeEntity>, NoParams> {
  final BloodTypeRepository bloodTypeRepository;

  BloodTypeUsecase({required this.bloodTypeRepository});

  @override
  Future<Either<Failure, List<BloodTypeEntity>>> call(NoParams params) async {
    try {
      final result = await bloodTypeRepository.getAll();
      return result.fold(
        (failure) => Left(failure),
        (typeBloods) => Right(typeBloods),
      );
    } on Exception catch (_) {
      return Left(ServerFailure());
    }
  }
}
