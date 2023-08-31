import 'package:provider_app/src/app/app_export.dart';

class HomeScreenComponent extends StatelessWidget {
  HomeScreenComponent({
    super.key,
    required this.snap,
  });

  final bool snap;

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AnimatedDrawerCubit>()
        ..getDashBoardOverview(context,
            pageController: PageController(initialPage: 0),
            advancedDrawerController: _advancedDrawerController),
      child: BlocBuilder<AnimatedDrawerCubit, AnimatedDrawerState>(
        builder: (context, state) => state.maybeWhen(
          loaded: (
            pageControllerLoaded,
          ) {
            return AnimatedDrawerAfterLoadedState();
          },
          animatedDrawerIndexUpdated: (
            index,
            isOpen,
          ) {
            BlocProvider.of<AnimatedDrawerCubit>(context)
                .pageController
                .jumpToPage(index);
            isOpen
                ? BlocProvider.of<AnimatedDrawerCubit>(context)
                    .advancedDrawerController
                    .hideDrawer()
                : BlocProvider.of<AnimatedDrawerCubit>(context)
                    .advancedDrawerController
                    .showDrawer();
            return AnimatedDrawerAfterLoadedState();
          },
          error: (error) => RetryButton(
            onTap: () => context
                .read<AnimatedDrawerCubit>()
                .getDashBoardOverview(context,
                    pageController: PageController(initialPage: 0),
                    advancedDrawerController: _advancedDrawerController),
          ),
          loading: () => AppProgressIndicator(),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
