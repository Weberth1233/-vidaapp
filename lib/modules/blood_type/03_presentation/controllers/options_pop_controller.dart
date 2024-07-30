import 'package:get/get.dart';

import '../pages/widgets/list_tile_blood_type.dart';

class OptionsPopController extends GetxController {
  Rx<OptionItem> item = OptionItem.initial.obs;

  void selectItem(OptionItem optionItem) {
    item.value = optionItem;
  }
}
