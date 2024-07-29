import 'package:flutter/material.dart';
import '../../../../00_core_modules/designer_system/global_scaffold_widget.dart';
import 'comment_area/comment_area.dart';
import 'comment_area/widgets/comment_textfield_area.dart';

class PostCommentsPage extends StatelessWidget {
  const PostCommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return GlobalScaffoldWidget(
      appBarTitle: 'Comentários',
      centerTitle: false,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView(
                children: [
                  CommentArea(
                    image: const AssetImage('assets/images-mock/people01.png'),
                    title: '@carol_Lima',
                    subTitle: '14 horas de 12/05/2022',
                    onPressedMoreOptions: () {
                      debugPrint('Cliquei no mais opções');
                    },
                    isColorRedTitle: false,
                    textComment:
                        'Gostaria de saber melhor a localização da doação para oir até o local',
                    onTapResponse: () {},
                  ),
                  CommentArea(
                    image: const AssetImage('assets/images-mock/people02.png'),
                    title: '@Carlos_Miguel',
                    subTitle: '14 horas de 12/05/2022',
                    onPressedMoreOptions: () {
                      debugPrint('Cliquei no mais opções');
                    },
                    isColorRedTitle: false,
                    textComment:
                        'Pessoal vamos todos ajudar o maximo de pessoas que a gente conseguir!',
                    visibilityIconButton: false,
                    onTapResponse: () {},
                  ),
                ],
              ),
            ),
            CommentTextFieldArea(
              controller: controller,
              onPressed: () {
                debugPrint('Cliquei em enviar comentário');
              },
            ),
          ],
        ),
      ),
    );
  }
}
