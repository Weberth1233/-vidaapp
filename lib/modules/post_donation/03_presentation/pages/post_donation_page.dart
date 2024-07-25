import 'package:flutter/material.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/pages/widgets/card_post.dart';
import 'package:vidaapp/modules/core_modules/widgets/global_scaffold_widget.dart';

class PostDonationPage extends StatelessWidget {
  const PostDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).colorScheme;

    return const GlobalScaffoldWidget(
      appBarTitle: '+VidaAPP',
      body: CardPost(),
    );
  }
}
