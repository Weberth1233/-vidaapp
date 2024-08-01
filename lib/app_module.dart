import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/modules/00_core_modules/infra/core_module.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/bloc/post_donation_bloc.dart';

import 'modules/post_donation/01_data/datasources/post_donation_datasources.dart';
import 'modules/post_donation/01_data/models/post_donation_model.dart';
import 'modules/post_donation/01_data/repositories/post_donation_repository_impl.dart';
import 'modules/post_donation/02_domain/repositories/post_donation_repository.dart';
import 'modules/post_donation/02_domain/usecases/post_donation_usecase.dart';
import 'modules/post_donation/03_presentation/pages/post_donation_page/post_donation_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    //Injetando datasources com o supabase - SupabaseClient
    //Injetando o supabaseconfig para inicia-ló ao chamar esse modulo

    //Injetando datasources com o supabase - SupabaseClient
    i.addSingleton<PostDonationDatasources>(
      () => PostDonationDatasourcesImpl(
        client: i.get<SupabaseClient>(),
      ),
    );
    //Injetando repository com o datasources - BloodTypeDatasources
    i.addSingleton<PostDonationRepository<PostDonationModel>>(
      () => PostDonationRepositoryImpl(
        postDonationDatasources: i.get<PostDonationDatasources>(),
      ),
    );
    //Injetando usecase com o repository - BloodTypeRepository
    i.addSingleton<PostDonationUsecase>(
      () => PostDonationUsecase(
        postDonationRepository:
            i.get<PostDonationRepository<PostDonationModel>>(),
      ),
    );
    //Injetando bloc com o usecase - BloodTypeUsecase
    i.addLazySingleton<PostDonationBloc>(
      () => PostDonationBloc(
        usecase: i.get<PostDonationUsecase>(),
      ),
    );
  }

  @override
  // TODO: implement imports
  List<Module> get imports => [CoreModule()];
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const PostDonationPage(),
    );
  }
}
