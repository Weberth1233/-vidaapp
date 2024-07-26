import 'package:flutter/material.dart';

import '../../widgets/card_header.dart';
import 'widgets/comment_content_area.dart';

class CommentArea extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final String subTitle;
  final void Function()? onPressedMoreOptions;
  final bool visibilityIconButton;
  final bool isColorRedTitle;

  final String textComment;
  final void Function()? onTapResponse;

  const CommentArea(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.onPressedMoreOptions,
      this.visibilityIconButton = true,
      this.isColorRedTitle = true,
      required this.textComment,
      this.onTapResponse});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CardHeader(
          image: image,
          title: title,
          isColorRedTitle: isColorRedTitle,
          subTitle: subTitle,
          visibilityIconButton: visibilityIconButton,
          onPressedMoreOptions: onPressedMoreOptions,
        ),
        CommentContentArea(
            textComment: textComment, onTapResponse: onTapResponse),
      ],
    );
  }
}
