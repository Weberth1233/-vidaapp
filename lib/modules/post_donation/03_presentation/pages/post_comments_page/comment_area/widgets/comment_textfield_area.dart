import 'package:flutter/material.dart';

import '../../../../../../00_core_modules/designer_system/forms_widgets/text_input_widget.dart';

class CommentTextFieldArea extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onPressed;
  const CommentTextFieldArea(
      {super.key, required this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: TextInputWidget(
              controller: controller,
              hintTextFormField: 'Comentar na postagem...',
              isBottomPadding: false,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: theme.colorScheme.primary,
            ),
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  color: theme.colorScheme.onSecondary,
                )),
          ),
        ],
      ),
    );
  }
}
