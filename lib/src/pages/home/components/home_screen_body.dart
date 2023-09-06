import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';
import 'package:provider_app/src/pages/home/components/health_condition_widget.dart';
import 'package:provider_app/src/pages/home/components/search_component_home.dart';
import 'package:provider_app/src/pages/home/components/top_rated_doctors_widget.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_widget_home.dart';

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
