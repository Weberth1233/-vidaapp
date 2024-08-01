import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../00_core_modules/designer_system/profile_photo_widget.dart';

class CardHeader extends StatelessWidget {
  final ImageProvider<Object> image;
  final String title;
  final String subTitle;
  final void Function()? onPressedMoreOptions;
  final bool visibilityIconButton;
  final bool isColorRedTitle;

  const CardHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.visibilityIconButton = true,
    this.onPressedMoreOptions,
    this.isColorRedTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfilePhotoWidget(
                image: image,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                      style: theme.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: isColorRedTitle
                              ? theme.colorScheme.secondary
                              : theme.colorScheme.onPrimary),
                    ),
                    Text(
                      subTitle,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: theme.colorScheme.outline),
                    ),
                  ],
                ),
              ),
              // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
          ),
        ),
        Visibility(
          visible: visibilityIconButton,
          child: IconButton(
            onPressed: onPressedMoreOptions,
            icon: Icon(
              Icons.more_vert_outlined,
              size: 35,
              color: theme.colorScheme.secondary,
            ),
          ),
        )
      ],
    );
  }
}
