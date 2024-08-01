import 'package:dartz/dartz.dart';
import 'package:vidaapp/modules/post_donation/01_data/datasources/post_donation_datasources.dart';
import 'package:vidaapp/modules/post_donation/01_data/models/post_donation_model.dart';

import '../../../00_core_modules/failures/failures.dart';
import '../../02_domain/entities/post_donation_entity.dart';
import '../../02_domain/repositories/post_donation_repository.dart';

class PostDonationRepositoryImpl
    extends PostDonationRepository<PostDonationModel> {
  final PostDonationDatasources postDonationDatasources;

  PostDonationRepositoryImpl({required this.postDonationDatasources})
      : super(dataSourcesImpl: postDonationDatasources);

  @override
  Future<Either<Failure, List<PostDonationEntity>>> getAll(String path,
      PostDonationModel Function(Map<String, dynamic> map) fromMap) {
    // TODO: implement getAll
    return super.getAll(path, fromMap);
  }
}
