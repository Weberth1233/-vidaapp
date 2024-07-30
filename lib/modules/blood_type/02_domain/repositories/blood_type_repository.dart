import 'package:vidaapp/modules/00_core_modules/repositories/reposity_impl.dart';
import '../entities/blood_type_entity.dart';

abstract class BloodTypeRepository<R extends BloodTypeEntity>
    extends Reposity<BloodTypeEntity, R> {
  BloodTypeRepository({required super.dataSourcesImpl});

  // void imprimir();
  //Criar novos metoos além do repositorio para usar se necessário
  // void imprimir();
}
