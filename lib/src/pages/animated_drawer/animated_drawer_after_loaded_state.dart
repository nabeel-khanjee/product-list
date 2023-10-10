import 'package:provider_app/src/app/app_export.dart';

class AnimatedDrawerAfterLoadedState extends StatelessWidget {
  const AnimatedDrawerAfterLoadedState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BorderSide borderSide =
        BorderSide(color: lighten(getThemeColor(context), 0.1), width: 20);
    return  AdvancedDrawer(
      backdrop: const AnimatedDrawerBackDrop(),
      controller: BlocProvider.of<AnimatedDrawerCubit>(context)
          .advancedDrawerController,
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
      drawer: const AppDrawer(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Scaffold(
          body: PageView(
            controller:
                BlocProvider.of<AnimatedDrawerCubit>(context).pageController,
            children: const [
              HomeScreenBody(),
              ProfileScreen(),
              AppointmentsScreen(),
              CommunicationScreen(),
              DocumentsScreen(),
              MedicationsScreen(),
              BillingsAndPaymentScreen(),
              SettingsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
