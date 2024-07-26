import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/type_blood/02_domain/entities/type_blood_entity.dart';
import 'package:vidaapp/modules/core_modules/failures/failures.dart';
import 'package:vidaapp/modules/type_blood/02_domain/repositories/type_blood_repository.dart';
import 'package:vidaapp/modules/core_modules/use_case.dart';

class TypeBloodUsecase implements UseCase<List<TypeBloodEntity>, NoParams> {
  final TypeBloodRepository typeBloodRepository;

  TypeBloodUsecase({required this.typeBloodRepository});

  @override
  Future<Either<Failure, List<TypeBloodEntity>>> call(NoParams params) async {
    try {
      final result = await typeBloodRepository.getAll();
      return result.fold(
        (failure) => Left(failure),
        (typeBloods) => Right(typeBloods),
      );
    } on Exception catch (e) {
      return Left(
        ServerFailure(
          stackTrace: e.toString(),
        ),
      );
    }
  }
}
