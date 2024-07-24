import 'package:flutter/material.dart';
import 'package:vidaapp/core/widgets/base_screen_widget.dart';

import '../../../../core/widgets/forms/text_input_widget.dart';

class TypeBloodPage extends StatelessWidget {
  const TypeBloodPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameTypeBlood = TextEditingController();
    // TextEditingController nameTypeBlood2 = TextEditingController();
    List<TextInputWidget> textInputWidgetList = [
      TextInputWidget(
        controller: nameTypeBlood,
        hintTextFormField: "Nome do tipo sanguíneo",
      ),
    ];

    return BaseScreenWidget(
      appBarTitle: 'Tipo Sanguineo',
      title: "Cadastro de Tipo Sanguíneo",
      subTitle: "Cadastre todos os tipos sanguineos",
      textInputWidgetList: textInputWidgetList,
    );
  }
}
