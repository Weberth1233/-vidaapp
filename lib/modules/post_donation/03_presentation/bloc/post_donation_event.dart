import 'package:vidaapp/modules/00_core_modules/bloc/generic_bloc_event.dart';

class PostDonationEvent extends GenericBlocEvent {}

class FilterEvent<R> extends GenericBlocEvent<R> {
  FilterEvent();
}
