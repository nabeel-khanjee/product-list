import 'package:provider_app/src/app/app_export.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: const Column(
              children: [
                SearchCompoentHome(),
                HealthConditionsWidget(),
                UpcommingAppointmentWidgetHome(),
                TopDatedDoctorsWidget()
              ],
            ),
          ),
        ),
        isGradient: false,
        appBar: AppBarcomponent(
            isTitleTowLines: true,
            isGradient: false,
            title: StringConstants.home,
            isBackAppBar: false));
  }
}
