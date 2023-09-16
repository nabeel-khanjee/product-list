import 'package:provider_app/src/app/app_export.dart';

class EmergencyTypesScreen extends StatelessWidget {
  const EmergencyTypesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customGradientBg,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const EmergencyTypesHeader(),
                const Expanded(
                  flex: 1,
                  child: EmergencyTypesDetails(),
                ),
                const Expanded(
                  flex: 2,
                  child: EmergencyTypesButtons(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                const Expanded(
                  flex: 1,
                  child: EmergencyTypesDoctor(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
