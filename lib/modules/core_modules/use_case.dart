import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vidaapp/modules/core_modules/failures/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class Params extends Equatable {}

class NoParams extends Params {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
