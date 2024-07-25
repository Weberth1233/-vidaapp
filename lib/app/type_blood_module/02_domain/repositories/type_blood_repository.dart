import 'package:dartz/dartz.dart';
import '../entities/type_blood_entity.dart';
import '../../../core_module/failures/failures.dart';

abstract class TypeBloodRepository {
  Future<Either<Failure, List<TypeBloodEntity>>> fetchAllTypeBlood();
}
