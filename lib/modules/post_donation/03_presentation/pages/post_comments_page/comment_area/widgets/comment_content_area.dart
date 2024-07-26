import 'package:flutter/material.dart';

//Comments content area
class CommentContentArea extends StatelessWidget {
  final String textComment;
  final void Function()? onTapResponse;
  const CommentContentArea(
      {super.key, required this.textComment, this.onTapResponse});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textComment,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.outline),
        ),
        const SizedBox(
          height: 3,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTapResponse,
            child: Container(
              color: Colors.transparent,
              height: 25,
              width: 80,
              child: Text(
                'Responder',
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.colorScheme.primary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
