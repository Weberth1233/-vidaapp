import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vidaapp/modules/00_core_modules/failures/failures.dart';

abstract class IUseCase<Type, Params, R> {
  Future<Either<Failure, Type>> call(GetAllParams<R> params);
  Future<Either<Failure, Type>> remove(RemoveParams<R> params);
}

abstract class Params extends Equatable {}

class NoParams extends Params {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetAllParams<R> extends Params {
  final String table;
  final R Function(Map<String, dynamic> map) fromMap;

  GetAllParams({required this.table, required this.fromMap});

  @override
  // TODO: implement props
  List<Object?> get props => [table, fromMap];
}

class RemoveParams<R> extends Params {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
