import 'package:flutter/material.dart';
import 'package:vidaapp/core/widgets/base_screen_widget.dart';

import '../../../../core/widgets/forms_widgets/text_input_widget.dart';

class TypeBloodEditPage extends StatelessWidget {
  const TypeBloodEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTypeBlood = TextEditingController();
    // TextEditingController nameTypeBlood2 = TextEditingController();
    List<TextInputWidget> textInputWidgetList = [
      TextInputWidget(
        controller: nameTypeBlood,
        hintTextFormField: "A+",
      ),
    ];

    return BaseScreenWidget(
      appBarTitle: 'Tipo Sangue',
      title: "Editar Tipo Sanguíneo",
      subTitle: "O seguinte dado pode ser alterado...",
      textInputWidgetList: textInputWidgetList,
      textButton: 'Atualizar',
      onPressed: () {},
    );
  }
}