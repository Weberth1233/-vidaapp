import 'package:flutter/material.dart';

class PostCardIcons extends StatelessWidget {
  final void Function()? onPressedLike;
  final void Function()? onPressedComment;
  final void Function()? onPressedMark;

  const PostCardIcons(
      {super.key,
      this.onPressedLike,
      this.onPressedComment,
      this.onPressedMark});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconsPost(
              icon: Icons.location_on_outlined,
              text: 'Localização',
              onPressed: onPressedLike,
            ),
            const SizedBox(
              width: 25,
            ),
            IconsPost(
              icon: Icons.ios_share,
              text: 'Compartilhar',
              onPressed: onPressedMark,
            ),
            // IconsPost(
            //   icon: Icons.message_outlined,
            //   text: 'Comentar',
            //   onPressed: onPressedComment,
            // ),
          ],
        ),
        // Row(
        //   children: [
        //     IconsPost(
        //       icon: Icons.heart_broken,
        //       text: 'Curtir',
        //       onPressed: onPressedLike,
        //     ),
        //     const SizedBox(
        //       width: 25,
        //     ),
        //     IconsPost(
        //       icon: Icons.message_outlined,
        //       text: 'Comentar',
        //       onPressed: onPressedComment,
        //     ),
        //   ],
        // ),

        // IconsPost(
        //   icon: Icons.people_outline,
        //   text: 'Marcar amigos',
        //   onPressed: onPressedMark,
        // ),
        // IconsPost(
        //   icon: Icons.ios_share,
        //   text: 'Compartilhar',
        //   onPressed: onPressedMark,
        // ),
      ],
    );
  }
}

class IconsPost extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final String text;
  const IconsPost(
      {super.key, required this.icon, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: theme.colorScheme.secondary,
            size: 24,
          ),
        ),
        Text(
          text,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.outline),
        ),
      ],
    );
  }
}
