import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';
import 'package:vidaapp/modules/00_core_modules/repositories/irepository.dart';

class Reposity<T, R> implements IRepository<T> {
  @override
  Future<Either<Failure, bool>> add(T entity) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> delete(T entity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<T>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, T>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> update(T entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
