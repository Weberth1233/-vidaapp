import 'package:flutter/material.dart';

class PostCardContent extends StatelessWidget {
  final ImageProvider<Object> imageContent;
  final String content;

  const PostCardContent(
      {super.key, required this.imageContent, required this.content});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: imageContent,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high)),
          child: const SizedBox(),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          content,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.outline),
        ),
      ],
    );
  }
}
