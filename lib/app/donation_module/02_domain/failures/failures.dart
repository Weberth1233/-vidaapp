import 'package:equatable/equatable.dart';

abstract class Failure {}

class ServerFailure extends Failure implements EquatableMixin {
  final String? stackTrace;

  ServerFailure({required this.stackTrace});

  @override
  // TODO: implement props
  List<Object?> get props => [stackTrace];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}
