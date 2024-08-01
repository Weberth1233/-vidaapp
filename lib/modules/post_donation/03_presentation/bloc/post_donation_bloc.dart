import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidaapp/modules/00_core_modules/bloc/generic_bloc_event.dart';
import 'package:vidaapp/modules/00_core_modules/bloc/generic_bloc_state.dart';
import 'package:vidaapp/modules/post_donation/02_domain/entities/post_donation_entity.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/bloc/post_donation_event.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/bloc/post_donation_state.dart';
import '../../../00_core_modules/usecase/iuse_case.dart';
import '../../../00_core_modules/utils/table_name.dart';
import '../../01_data/models/post_donation_model.dart';
import '../../02_domain/usecases/post_donation_usecase.dart';

class PostDonationBloc extends Bloc<GenericBlocEvent<PostDonationEvent>,
    GenericBlocState<PostDonationState>> {
  final PostDonationUsecase usecase;

  PostDonationBloc({
    required this.usecase,
  }) : super(GenericBlocInitialState<PostDonationState>()) {
    on<LoadGenericBlocEvent<PostDonationEvent>>(
      _onPostDonationFetched,
    );
    on<RemoveGenericBlocEvent<PostDonationEvent, PostDonationEntity>>(
      _onRemovePostDonation,
    );
  }

  Future<void> _onPostDonationFetched(
      LoadGenericBlocEvent<PostDonationEvent> event,
      Emitter<GenericBlocState<PostDonationState>> emit) async {
    emit(GenericBlocLoadingState<PostDonationState>());

    final result = await usecase.call(
      GetAllParams<PostDonationModel>(
          table: TableName.postDonation, fromMap: PostDonationModel.fromMap),
    );
    result.fold(
        (failure) => emit(GenericBlocErrorState<PostDonationState>(
            message: 'Erro ao buscar os dados!')), (sucess) {
      sucess.sort(
        (a, b) => a.titlePost.compareTo(b.titlePost),
      );

      emit(
        GenericBlocLoadedState<PostDonationState, PostDonationEntity>(
            entityList: sucess),
      );
    });
  }

  Future<void> _onRemovePostDonation(
      RemoveGenericBlocEvent<PostDonationEvent, PostDonationEntity> event,
      Emitter<GenericBlocState<PostDonationState>> emit) async {}
}
