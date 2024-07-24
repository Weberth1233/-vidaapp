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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: body,
    );
  }
}
