import 'package:flutter/material.dart';

class GlobalScaffoldWidget extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  const GlobalScaffoldWidget({
    super.key,
    required this.appBarTitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style:
              theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: body,
    );
  }
}
