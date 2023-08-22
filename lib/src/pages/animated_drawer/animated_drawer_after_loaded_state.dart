import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/animated_drawer/animated_drawer_back_drop.dart';

class AnimatedDrawerAfterLoadedState extends StatelessWidget {
  const AnimatedDrawerAfterLoadedState({
    super.key,
    required AdvancedDrawerController advancedDrawerController,
    required this.borderSide,
    required this.pageController,
    required this.snap,
  }) : _advancedDrawerController = advancedDrawerController;

  final AdvancedDrawerController _advancedDrawerController;
  final BorderSide borderSide;
  final PageController pageController;
  final bool snap;

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdrop: AnimatedDrawerBackDrop(),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(
          milliseconds: 300,
        ),
        animateChildDecoration: true,
        rtlOpening: getCurrentLanguageDirection(),
        openScale: 0.65,
        openRatio: 0.5,
        disabledGestures: true,
        childDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            border: Border(
                bottom: borderSide,
                top: borderSide,
                left: borderSide,
                right: borderSide)),
        drawer: AppDrawer(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Scaffold(
            body: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                HomeScreenBody(
                  snap: snap,
                ),
                SettingsScreen()
              ],
            ),
          ),
        ));
  }
}
