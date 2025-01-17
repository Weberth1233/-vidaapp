import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/modules/00_core_modules/supabase_config.dart';
import 'package:vidaapp/modules/00_core_modules/use_case.dart';
import 'package:vidaapp/modules/blood_type/01_data/datasources/blood_type_datasources.dart';
import 'package:vidaapp/modules/blood_type/01_data/repositories/blood_type_repository_impl.dart';
import 'package:vidaapp/modules/blood_type/02_domain/repositories/blood_type_repository.dart';
import 'package:vidaapp/modules/blood_type/02_domain/usecases/blood_type_usecase.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_bloc.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/pages/blood_type_list_page.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    //Injetando o supabaseconfig para inicia-ló ao chamar esse modulo
    i.addSingleton<SupabaseClient>(createSupabaseClient);

    //Injetando datasources com o supabase - SupabaseClient
    i.addSingleton<BloodTypeDatasources>(
      () => BloodTypeDatasourcesImpl(
        client: i.get<SupabaseClient>(),
      ),
    );
    //Injetando repository com o datasources - BloodTypeDatasources
    i.addSingleton<BloodTypeRepository>(
      () => BloodTypeRepositoryImpl(
        bloodTypeDatasources: i.get<BloodTypeDatasources>(),
      ),
    );
    //Injetando usecase com o repository - BloodTypeRepository
    i.addSingleton<BloodTypeUsecase>(
      () => BloodTypeUsecase(
        bloodTypeRepository: i.get<BloodTypeRepository>(),
      ),
    );
    //Injetando bloc com o usecase - BloodTypeUsecase
    i.addLazySingleton<BloodTypeBloc>(
      () => BloodTypeBloc(
        usecase: i.get<BloodTypeUsecase>(),
      ),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const BloodTypeBlocProvider(),
    );
  }
}
