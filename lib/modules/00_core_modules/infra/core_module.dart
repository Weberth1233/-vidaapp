import 'package:flutter_modular/flutter_modular.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../supabase_config.dart';

class CoreModule extends Module {
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
