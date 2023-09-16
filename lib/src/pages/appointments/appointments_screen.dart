import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/appointments/components/appointments_body.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
      appbarText: StringConstants.appointments,
      isBackAppBar: false,
      body: const AppointmentsBody(),
    );
  }
}
