import 'package:vidaapp/modules/00_core_modules/usecase/use_case.dart';
import 'package:vidaapp/modules/00_core_modules/usecase/iuse_case.dart';
import '../../01_data/models/post_donation_model.dart';
import '../entities/post_donation_entity.dart';
import '../repositories/post_donation_repository.dart';

class PostDonationUsecase
    extends UseCase<PostDonationEntity, NoParams, PostDonationModel> {
  // implements IUseCase<List<PostDonationEntity>, NoParams, PostDonationModel> {
  final PostDonationRepository<PostDonationModel> postDonationRepository;

  PostDonationUsecase({required this.postDonationRepository})
      : super(
          reposity: postDonationRepository,
        );
}
