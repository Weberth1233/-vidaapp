import 'package:vidaapp/modules/post_donation/02_domain/entities/post_donation_entity.dart';

class PostDonationModel extends PostDonationEntity {
  PostDonationModel(
      {required super.id,
      required super.createdAt,
      required super.titlePost,
      required super.subtitlePost,
      required super.imagePost,
      required super.descriptionPost});

  factory PostDonationModel.fromMap(Map<String, dynamic> map) {
    return PostDonationModel(
      id: map['id'],
      createdAt: DateTime.parse(map['created_at']),
      titlePost: map['title_post'],
      subtitlePost: map['subtitle_post'],
      imagePost: map['image_post'],
      descriptionPost: map['description_post'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'title_post': titlePost,
      'subtitle_post': subtitlePost,
      'image_post': imagePost,
      'description_post': descriptionPost,
    };
  }
}
