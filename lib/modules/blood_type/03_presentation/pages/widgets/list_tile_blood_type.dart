import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/controllers/options_pop_controller.dart';
import '../../../02_domain/entities/blood_type_entity.dart';

// This is the type used by the popup menu below.
enum OptionItem {
  initial,
  edit,
  desative,
}

class ListTileBloodType extends StatefulWidget {
  final BloodTypeEntity bloodTypeEntity;
  final void Function()? onTapEdit;
  final void Function()? onTapDesative;

  const ListTileBloodType(
      {super.key,
      required this.bloodTypeEntity,
      this.onTapEdit,
      this.onTapDesative});

  @override
  State<ListTileBloodType> createState() => _ListTileBloodTypeState();
}

class _ListTileBloodTypeState extends State<ListTileBloodType> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final OptionsPopController optionsPopController =
        Get.put(OptionsPopController());

    return Card(
      child: ListTile(
        leading: Icon(
          Icons.bloodtype,
          color: theme.colorScheme.primary,
        ),
        title: Text(widget.bloodTypeEntity.name),
        trailing: PopupMenuButton<OptionItem>(
          initialValue: OptionItem.initial,
          onSelected: (OptionItem item) {
            optionsPopController.selectItem(item);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<OptionItem>>[
            PopupMenuItem<OptionItem>(
              value: OptionItem.edit,
              onTap: widget.onTapEdit,
              child: const Text('Editar'),
            ),
            PopupMenuItem<OptionItem>(
              value: OptionItem.desative,
              onTap: widget.onTapDesative,
              child: const Text('Desativar'),
            ),
          ],
        ),
      ),
    );
  }
}
