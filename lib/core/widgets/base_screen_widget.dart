import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidaapp/core/widgets/forms/button_widget.dart';
import 'package:vidaapp/core/widgets/global_scaffold_widget.dart';

import 'forms/text_input_widget.dart';

class BaseScreenWidget extends StatelessWidget {
  final String appBarTitle;
  final String title;
  final String subTitle;
  final List<TextInputWidget> textInputWidgetList;

  const BaseScreenWidget({
    super.key,
    required this.appBarTitle,
    required this.title,
    required this.subTitle,
    required this.textInputWidgetList,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalScaffoldWidget(
      appBarTitle: appBarTitle,
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFDB3541)),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 62,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: textInputWidgetList.length,
                      itemBuilder: (context, index) {
                        return textInputWidgetList[index];
                      },
                    ),
                  ),
                  const ButtonWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
