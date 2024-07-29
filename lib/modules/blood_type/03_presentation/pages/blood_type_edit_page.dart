import 'package:flutter/material.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/base_screen_widget.dart';

import '../../../00_core_modules/designer_system/forms_widgets/text_input_widget.dart';

class BloodTypeEditPage extends StatelessWidget {
  const BloodTypeEditPage({super.key});

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
