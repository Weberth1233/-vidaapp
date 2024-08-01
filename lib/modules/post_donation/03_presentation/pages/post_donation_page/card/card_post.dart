import 'package:flutter/material.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/pages/widgets/card_header.dart';

import 'widgets/post_card_content.dart';
import 'widgets/post_card_icons.dart';

class CardPost extends StatelessWidget {
  final ImageProvider<Object> imageHeader;
  final String title;
  final String subTitle;
  final void Function()? onPressedMoreOptions;
  final bool visibilityIconButton;

  final ImageProvider<Object> imageContent;

  final String content;

  final void Function()? onPressedLike;
  final void Function()? onPressedComment;
  final void Function()? onPressedMark;

  const CardPost({
    super.key,
    required this.imageHeader,
    required this.title,
    required this.subTitle,
    required this.imageContent,
    required this.content,
    this.visibilityIconButton = true,
    this.onPressedLike,
    this.onPressedComment,
    this.onPressedMark,
    this.onPressedMoreOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CardHeader(
            title: title,
            subTitle: subTitle,
            image: imageHeader,
            visibilityIconButton: visibilityIconButton,
            onPressedMoreOptions: onPressedMoreOptions),
        PostCardContent(
          imageContent: imageContent,
          content: content,
        ),
        PostCardIcons(
          onPressedLike: onPressedLike,
          onPressedComment: onPressedComment,
          onPressedMark: onPressedMark,
        ),
        const SizedBox(
          height: 12,
        ),
        const Divider(
          thickness: 0.2,
        )
      ],
    );
  }
}
