import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/global_scaffold_widget.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/error_state_widget.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/loading_state_widget.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_event.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_state.dart';

class BloodTypeBlocProvider extends StatelessWidget {
  const BloodTypeBlocProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloodTypeBloc = Modular.get<BloodTypeBloc>();

    return BlocProvider<BloodTypeBloc>.value(
      value: bloodTypeBloc..add(LoadBloodTypeEvent()),
      child: const BloodTypeListPage(),
    );
  }
}

class BloodTypeListPage extends StatelessWidget {
  const BloodTypeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffoldWidget(
      appBarTitle: 'Tipos Sanguíneos',
      centerTitle: false,
      // appBarTitle: 'Tipos sanguineos',
      body: BlocBuilder<BloodTypeBloc, BloodTypeState>(
        builder: (context, state) {
          if (state is BloodTypeLoadingState) {
            return const LoadingStateWidget();
          } else if (state is BloodTypeLoadedState) {
            return ListView.builder(
              itemCount: state.bloodTypeList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.bloodTypeList[index].name),
                );
              },
            );
          } else if (state is BloodTypeErrorState) {
            return ErrorStateWidget(message: state.message);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
