class PostDonationEntity {
  final int id;
  final DateTime createdAt;
  final String titlePost;
  final String subtitlePost;
  final String imagePost;
  final String descriptionPost;

  PostDonationEntity({
    required this.id,
    required this.createdAt,
    required this.titlePost,
    required this.subtitlePost,
    required this.imagePost,
    required this.descriptionPost,
  });
}
