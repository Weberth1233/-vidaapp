import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintTextFormField;
  const TextInputWidget({
    super.key,
    required this.controller,
    required this.hintTextFormField,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(bottom: 22),
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: const TextStyle(height: 1.0),
        decoration: InputDecoration(
          hintText: hintTextFormField,
          // hintStyle: theme.textTheme.bodySmall!
          //     .copyWith(color: theme.colorScheme.outline),
          // border: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(30),
          //   ),
          // ),
        ),
        controller: controller,
      ),
    );
  }
}
