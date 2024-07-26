import 'package:flutter/material.dart';
import 'package:vidaapp/modules/core_modules/designer_system/base_screen_widget.dart';

import '../../../core_modules/designer_system/forms_widgets/text_input_widget.dart';

class TypeBloodRegistrationPage extends StatelessWidget {
  const TypeBloodRegistrationPage({super.key});

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
      appBarTitle: 'Tipo Sangue',
      title: "Cadastro de Tipo Sanguíneo",
      subTitle: "Cadastre todos os tipos sanguineos",
      textInputWidgetList: textInputWidgetList,
      textButton: 'Cadastro',
      onPressed: () {},
    );
  }
}
