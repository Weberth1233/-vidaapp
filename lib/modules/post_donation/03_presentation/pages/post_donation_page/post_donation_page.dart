import 'package:flutter/material.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/pages/post_donation_page/card/card_post.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/global_scaffold_widget.dart';

class PostDonationPage extends StatelessWidget {
  const PostDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffoldWidget(
      appBarTitle: '+VidaAPP',
      centerTitle: false,
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: ListView(children: [
            CardPost(
              imageHeader: const AssetImage('assets/images-mock/Ellipse.png'),
              title: '@ContaOficial +Vida',
              subTitle: 'Publicado em 09 set 2022 às 23:09',
              onPressedMoreOptions: () {
                debugPrint('cliquei no mais opções');
              },
              imageContent: const AssetImage(
                'assets/images-mock/photoPots.png',
              ),
              content:
                  'Vamos lá minha gente. Ajudar quem mais precisa nesse momento!',
              onPressedLike: () {
                debugPrint('cliquei no like');
              },
              onPressedComment: () {
                debugPrint('cliquei no comentarios');
              },
              onPressedMark: () {
                debugPrint('cliquei no marcar amigos');
              },
            ),
          ])),
    );
  }
}
