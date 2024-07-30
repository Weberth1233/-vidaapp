import 'package:vidaapp/modules/00_core_modules/datasources/data_sources_impl.dart';
import 'package:vidaapp/modules/blood_type/01_data/models/blood_type_model.dart';

abstract class BloodTypeDatasources extends DataSourcesImpl<BloodTypeModel> {
  BloodTypeDatasources({required super.client});
  //Caso seja necessário adicionar novas metodos além dos presentes no DatSourcesImpl

  // void imprimir();
}

class BloodTypeDatasourcesImpl extends BloodTypeDatasources {
  BloodTypeDatasourcesImpl({required super.client});

  @override
  Future<List<BloodTypeModel>> get(
      String path, BloodTypeModel Function(Map<String, dynamic> map) fromMap) {
    // TODO: implement get
    return super.get(path, fromMap);
  }

  // @override
  // void imprimir() {
  //   // TODO: implement imprimir
  // }
}
