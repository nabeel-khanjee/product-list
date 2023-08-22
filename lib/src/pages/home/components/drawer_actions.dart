import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/home/cubit/animated_drawer_cubit.dart';

drawerStateChnageUpdateIndex(
        {int? index, required bool isOpen, required BuildContext context}) =>
    BlocProvider.of<AnimatedDrawerCubit>(context)
      ..updateIndex(
          index: index ??
              BlocProvider.of<AnimatedDrawerCubit>(context).getBottomNavIndex,
          isOpen: isOpen);
