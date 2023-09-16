import 'package:provider_app/src/app/app_export.dart';

class EmergencyTypesDoctor extends StatelessWidget {
  const EmergencyTypesDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            NavigationUtil.push(
              context,
              RouteConstants.allEmergenciesRoute,
            );
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.pinkScanHome),
          child: Text(
            "Call a Doctor",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
