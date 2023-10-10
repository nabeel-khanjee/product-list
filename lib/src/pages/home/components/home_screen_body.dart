import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/appointments/book_appointments/components/emergency_call_button.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: EmergencyCallButton(),
        ),
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
