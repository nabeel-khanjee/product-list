import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/app_loader.dart';
import 'package:provider_app/src/components/retry_button.dart';
import 'package:provider_app/src/di/injector.dart';
import 'package:provider_app/src/pages/home/components/animated_drawer_after_loaded_state.dart';
import 'package:provider_app/src/pages/home/cubit/animated_drawer_cubit.dart';

class HomeScreenComponent extends StatelessWidget {
  HomeScreenComponent({
    super.key,
    required this.snap,
  });
  final bool snap;

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    var borderSide =
        BorderSide(color: lighten(getThemeColor(context), 0.1), width: 20);
    return BlocProvider(
      create: (context) => getIt.get<AnimatedDrawerCubit>()
        ..getDashBoardOverview(context,
            pageController: PageController(initialPage: 0)),
      child: BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (
            pageControllerLoaded,
          ) {
            return AnimatedDrawerAfterLoadedState(
                advancedDrawerController: _advancedDrawerController,
                borderSide: borderSide,
                pageController: pageController,
                snap: snap);
          },
          animatedDrawerIndexUpdated: (index, isOpen) {
            pageController.jumpToPage(index);
            isOpen
                ? _advancedDrawerController.hideDrawer()
                : _advancedDrawerController.showDrawer();
            return AnimatedDrawerAfterLoadedState(
                advancedDrawerController: _advancedDrawerController,
                borderSide: borderSide,
                pageController: pageController,
                snap: snap);
          },
          error: (error) => RetryButton(
            onTap: () => context
                .read<AnimatedDrawerCubit>()
                .getDashBoardOverview(context,
                    pageController: PageController(initialPage: 0)),
          ),
          loading: () => AppProgressIndicator(),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}


