import '../../../00_core_modules/datasources/data_sources_impl.dart';
import '../models/post_donation_model.dart';

abstract class PostDonationDatasources
    extends DataSourcesImpl<PostDonationModel> {
  PostDonationDatasources({required super.client});
  //Caso seja necessário adicionar novas metodos além dos presentes no DatSourcesImpl

  // void imprimir();
}

class PostDonationDatasourcesImpl extends PostDonationDatasources {
  PostDonationDatasourcesImpl({required super.client});
}
