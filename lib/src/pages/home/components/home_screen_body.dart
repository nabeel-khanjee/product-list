import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';
import 'package:provider_app/src/constant/font_constants.dart';
import 'package:provider_app/src/pages/home/components/health_condition_widget.dart';
import 'package:provider_app/src/pages/home/components/search_component_home.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_list.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_widget_home.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SearchCompoentHome(),
              HealthConditionsWidget(),
              UpcommingAppointmentWidgetHome()
            ],
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


