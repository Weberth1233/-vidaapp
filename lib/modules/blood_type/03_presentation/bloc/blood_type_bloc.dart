import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidaapp/modules/00_core_modules/utils/table_name.dart';
import 'package:vidaapp/modules/blood_type/01_data/models/blood_type_model.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_event.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_state.dart';
import 'package:vidaapp/modules/00_core_modules/usecase/iuse_case.dart';

import '../../02_domain/usecases/blood_type_usecase.dart';

class BloodTypeBloc extends Bloc<BloodTypeEvent, BloodTypeState> {
  final BloodTypeUsecase usecase;

  BloodTypeBloc({
    required this.usecase,
  }) : super(BloodTypeInitialState()) {
    on<LoadBloodTypeEvent>(
      _onBloodTypeFetched,
    );
    on<RemoveBloodTypeEvent>(
      _onBloodTypeRemove,
    );
  }

  Future<void> _onBloodTypeFetched(
      LoadBloodTypeEvent event, Emitter<BloodTypeState> emit) async {
    emit(BloodTypeLoadingState());
    final result = await usecase.call(
      GetAllParams<BloodTypeModel>(
          table: TableName.bloodTypeTable, fromMap: BloodTypeModel.fromMap),
    );
    result.fold(
      (failure) =>
          emit(BloodTypeErrorState(message: 'Erro ao buscar os dados!')),
      (sucess) => emit(
        BloodTypeLoadedState(bloodTypeList: sucess),
      ),
    );
  }

  Future<void> _onBloodTypeRemove(
      RemoveBloodTypeEvent event, Emitter<BloodTypeState> emit) async {
    emit(BloodTypeLoadingState());
    final result = await usecase.remove(
      RemoveParams<BloodTypeModel>(
          table: TableName.bloodTypeTable, id: event.bloodTypeEntity.id),
    );
    result.fold(
      (failure) =>
          emit(BloodTypeErrorState(message: 'Erro ao buscar os dados!')),
      (sucess) => add(
        LoadBloodTypeEvent(),
      ),
    );
  }
}
