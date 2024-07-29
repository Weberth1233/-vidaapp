import 'package:equatable/equatable.dart';

abstract class BloodTypeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadBloodTypeEvent extends BloodTypeEvent {}
