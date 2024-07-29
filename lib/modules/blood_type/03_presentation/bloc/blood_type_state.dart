import 'package:equatable/equatable.dart';

import '../../02_domain/entities/blood_type_entity.dart';

abstract class BloodTypeState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class BloodTypeInitialState extends BloodTypeState {}

class BloodTypeLoadingState extends BloodTypeState {}

class BloodTypeLoadedState extends BloodTypeState {
  final List<BloodTypeEntity> bloodTypeList;

  BloodTypeLoadedState({required this.bloodTypeList});

  @override
  // TODO: implement props
  List<Object?> get props => [bloodTypeList];
}

class BloodTypeErrorState extends BloodTypeState {
  final String message;

  BloodTypeErrorState({required this.message});
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
