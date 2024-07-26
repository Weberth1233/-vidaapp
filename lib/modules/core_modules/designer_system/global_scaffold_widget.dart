import 'package:flutter/material.dart';
import 'package:vidaapp/modules/core_modules/designer_system/profile_photo_widget.dart';

class GlobalScaffoldWidget extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  final bool? centerTitle;
  final Color? backgroundColor;

  const GlobalScaffoldWidget({
    super.key,
    required this.appBarTitle,
    required this.body,
    this.centerTitle = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Text(
          appBarTitle,
          style: theme.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSecondary),
        ),
        centerTitle: centerTitle,
        actions: [
          const ProfilePhotoWidget(
              image: AssetImage('assets/images-mock/Ellipse.png')),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: body,
      ),
    );
  }
}
