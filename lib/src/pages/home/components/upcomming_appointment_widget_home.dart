import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_home_card.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_list.dart';

class UpcommingAppointmentWidgetHome extends StatelessWidget {
  const UpcommingAppointmentWidgetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        HomeWidgetHeading(
          title: StringConstants.upcomingAppointments,
          isSeeAll: false,
          bottonPadding: 10,
          topPadding: 22,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: upcommingAppointment
                .asMap()
                .entries
                .map((element) =>
                    UpcommingAppointmentHomeCard(element: element))
                .toList(),
          ),
        )
      ]),
    );
  }
}
