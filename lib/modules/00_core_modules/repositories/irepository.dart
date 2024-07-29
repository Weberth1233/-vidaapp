import 'package:dartz/dartz.dart';

import '../failures/failures.dart';

abstract class IRepository<T> {
  Future<Either<Failure, List<T>>> getAll();
  Future<Either<Failure, T>> getById(String id);
  Future<Either<Failure, bool>> add(T entity);
  Future<Either<Failure, bool>> update(T entity);
  Future<Either<Failure, bool>> delete(T entity);
}
