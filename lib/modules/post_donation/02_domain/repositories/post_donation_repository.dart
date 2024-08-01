import 'package:vidaapp/modules/00_core_modules/repositories/reposity_impl.dart';

import '../entities/post_donation_entity.dart';

abstract class PostDonationRepository<R extends PostDonationEntity>
    extends Reposity<PostDonationEntity, R> {
  PostDonationRepository({required super.dataSourcesImpl});

  // void imprimir();
  //Criar novos metoos além do repositorio para usar se necessário
  // void imprimir();
}
