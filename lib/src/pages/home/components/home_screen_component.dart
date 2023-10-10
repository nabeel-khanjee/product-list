import 'package:provider_app/src/app/app_export.dart';

class HomeScreenComponent extends StatefulWidget {
  const HomeScreenComponent({
    super.key,
    required this.snap,
  });

  final bool snap;

  @override
  State<HomeScreenComponent> createState() => _HomeScreenComponentState();
}

class _HomeScreenComponentState extends State<HomeScreenComponent> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AnimatedDrawerCubit>()
        ..getDashBoardOverview(context,
            pageController: PageController(initialPage: 0),
            advancedDrawerController: _advancedDrawerController),
      child: BlocConsumer<AnimatedDrawerCubit, AnimatedDrawerState>(
        listener: (context, state) {
          setState(() {});
        },
        builder: (context, state) => state.maybeWhen(
          loaded: (
            pageControllerLoaded,
          ) =>
              const AnimatedDrawerAfterLoadedState(),
          animatedDrawerIndexUpdated: (
            index,
            isOpen,
          ) {
            return const AnimatedDrawerAfterLoadedState();
          },
          error: (error) => RetryButton(
            onTap: () => context
                .read<AnimatedDrawerCubit>()
                .getDashBoardOverview(context,
                    pageController: PageController(initialPage: 0),
                    advancedDrawerController: _advancedDrawerController),
          ),
          loading: () => const AppProgressIndicator(),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}

class TopBarList {
  final String icon;
  final String text;
  final int pageIndex;

  TopBarList({required this.icon, required this.text, required this.pageIndex});
}
