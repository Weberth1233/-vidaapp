import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vidaapp/modules/00_core_modules/bloc/generic_bloc_state.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/states_widgets/list_loading.dart';
import 'package:vidaapp/modules/post_donation/02_domain/entities/post_donation_entity.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/bloc/post_donation_bloc.dart';
import 'package:vidaapp/modules/post_donation/03_presentation/pages/post_donation_page/card/card_post.dart';
import 'package:vidaapp/modules/00_core_modules/designer_system/global_scaffold_widget.dart';

import '../../../../00_core_modules/bloc/generic_bloc_event.dart';
import '../../../../00_core_modules/designer_system/states_widgets/error_state_widget.dart';
import '../../../../00_core_modules/designer_system/states_widgets/loading_state_widget.dart';
import '../../bloc/post_donation_event.dart';
import '../../bloc/post_donation_state.dart';

class PostDonationPage extends StatefulWidget {
  const PostDonationPage({super.key});

  @override
  State<PostDonationPage> createState() => _PostDonationPageState();
}

class _PostDonationPageState extends State<PostDonationPage> {
  late final PostDonationBloc _bloc;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _bloc = Modular.get<PostDonationBloc>();
    // _bloc.add(LoadBloodTypeEvent());
    _bloc.add(LoadGenericBlocEvent<PostDonationEvent>());
  }

  @override
  Widget build(BuildContext context) {
    return GlobalScaffoldWidget(
      appBarTitle: '+VidaAPP',
      centerTitle: false,
      body: BlocBuilder<PostDonationBloc, GenericBlocState<PostDonationState>>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is GenericBlocLoadingState<PostDonationState>) {
            return const LoadingStateWidget();
          } else if (state is GenericBlocLoadedState<PostDonationState,
              PostDonationEntity>) {
            return Container(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: ListLoadindWidget(
                  itemCount: state.entityList.length,
                  itemBuilder: (context, index) {
                    PostDonationEntity postDonationEntity =
                        state.entityList[index];
                    return CardPost(
                      imageHeader:
                          const AssetImage('assets/images-mock/people02.png'),
                      title: "@${postDonationEntity.titlePost}",
                      subTitle: postDonationEntity.createdAt.toString(),
                      onPressedMoreOptions: () {
                        debugPrint('cliquei no mais opções');
                      },
                      imageContent: NetworkImage(postDonationEntity.imagePost),
                      content: postDonationEntity.descriptionPost,
                      onPressedLike: () {
                        debugPrint('cliquei no like');
                      },
                      onPressedComment: () {
                        debugPrint('cliquei no comentarios');
                      },
                      onPressedMark: () {
                        debugPrint('cliquei no marcar amigos');
                      },
                    );
                  },
                ));
          } else if (state is GenericBlocErrorState<PostDonationState>) {
            return ErrorStateWidget(message: state.message);
          }
          return const SizedBox();
          // child: ListView(
          //   children: [
          // CardPost(
          //   imageHeader:
          //       const AssetImage('assets/images-mock/Ellipse.png'),
          //   title: '@ContaOficial +Vida',
          //   subTitle: 'Publicado em 09 set 2022 às 23:09',
          //   onPressedMoreOptions: () {
          //     debugPrint('cliquei no mais opções');
          //   },
          //   imageContent: const AssetImage(
          //     'assets/images-mock/photoPots.png',
          //   ),
          //   content:
          //       'Vamos lá minha gente. Ajudar quem mais precisa nesse momento!',
          //   onPressedLike: () {
          //     debugPrint('cliquei no like');
          //   },
          //   onPressedComment: () {
          //     debugPrint('cliquei no comentarios');
          //   },
          //   onPressedMark: () {
          //     debugPrint('cliquei no marcar amigos');
          //   },
          // ),
          //   ],
          // ),
          // return ErrorStateWidget(message: state.message);
        },
      ),
    );
  }
}
