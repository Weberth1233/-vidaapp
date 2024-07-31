import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/global_scaffold_widget.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/error_state_widget.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/list_loading.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/loading_state_widget.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_event.dart';
import 'package:vidaapp/modules/blood_type/03_presentation/bloc/blood_type_state.dart';

import 'widgets/list_tile_blood_type.dart';

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

class BloodTypeListPage extends StatefulWidget {
  const BloodTypeListPage({super.key});

  @override
  State<BloodTypeListPage> createState() => _BloodTypeListPageState();
}

class _BloodTypeListPageState extends State<BloodTypeListPage> {
  late final BloodTypeBloc _bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = Modular.get<BloodTypeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffoldWidget(
      appBarTitle: 'Tipos Sanguíneos',
      centerTitle: false,
      // appBarTitle: 'Tipos sanguineos',
      body: RefreshIndicator(
        onRefresh: () async {
          _bloc.add(LoadBloodTypeEvent());
        },
        child: BlocBuilder<BloodTypeBloc, BloodTypeState>(
          builder: (context, state) {
            if (state is BloodTypeLoadingState) {
              return const LoadingStateWidget();
            } else if (state is BloodTypeLoadedState) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListLoadindWidget(
                  itemCount: state.bloodTypeList.length,
                  itemBuilder: (context, index) {
                    return ListTileBloodType(
                      bloodTypeEntity: state.bloodTypeList[index],
                      onTapDesative: () {
                        _bloc.add(RemoveBloodTypeEvent(
                            bloodTypeEntity: state.bloodTypeList[index]));
                      },
                      onTapEdit: () {
                        print('Editar');
                      },
                    );
                  },
                ),
              );
            } else if (state is BloodTypeErrorState) {
              return ErrorStateWidget(message: state.message);
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
