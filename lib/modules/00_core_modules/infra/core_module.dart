import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vidaapp/modules/00_core_modules/infra/base_model.dart';
import 'package:vidaapp/modules/00_core_modules/infra/data_sources.dart';
import '../supabase_config.dart';
import 'data_sources_clone.dart';

class CoreModule<T extends BaseModel> extends Module {
  @override
  void exportedBinds(Injector i) {
    //Injetando o supabaseconfig para inicia-ló ao chamar esse modulo
    i.addSingleton<SupabaseClient>(createSupabaseClient);
    //Injetando datasources com o supabase - SupabaseClient
    // i.addSingleton<IDatasource<T>>(
    //   () => DataSourcesImpl<T>(
    //     client: i.get<SupabaseClient>(),
    //   ),
    // );
  }
}
