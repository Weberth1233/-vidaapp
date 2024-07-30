import 'package:dartz/dartz.dart';

import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';

import 'iuse_case.dart';

class UseCase<Type, Params, R> implements IUseCase<Type, Params, R> {
  @override
  Future<Either<Failure, Type>> call(GetAllParams<R> params) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Type>> remove(RemoveParams<R> params) {
    // TODO: implement remove
    throw UnimplementedError();
  }
}
