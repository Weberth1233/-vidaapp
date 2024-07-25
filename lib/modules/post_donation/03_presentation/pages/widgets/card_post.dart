import 'package:flutter/material.dart';

class CardPost extends StatelessWidget {
  const CardPost({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;
    return Container(
      color: themeColor.onSecondary,
      child: const Text('fffffffffffffff'),
    );
  }
}
