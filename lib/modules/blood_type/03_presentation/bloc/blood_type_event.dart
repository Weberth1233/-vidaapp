import 'package:equatable/equatable.dart';
import 'package:vidaapp/modules/blood_type/02_domain/entities/blood_type_entity.dart';

abstract class BloodTypeEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadBloodTypeEvent extends BloodTypeEvent {}

class RemoveBloodTypeEvent extends BloodTypeEvent {
  final BloodTypeEntity bloodTypeEntity;

  RemoveBloodTypeEvent({required this.bloodTypeEntity});
}
