import 'package:provider_app/src/app/app_export.dart';

drawerStateChnageUpdateIndex(
        {int? index,
        required bool isOpen,
        required AdvancedDrawerController advancedDrawerController,
        required BuildContext context}) async =>
    await BlocProvider.of<AnimatedDrawerCubit>(context)
      ..updateIndex(
        advancedDrawerController: advancedDrawerController,
          index: index ??
              BlocProvider.of<AnimatedDrawerCubit>(context).getBottomNavIndex,
          isOpen: isOpen);