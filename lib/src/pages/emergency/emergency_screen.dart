import 'package:provider_app/src/app/app_export.dart';

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customGradientBg,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: Column(
              children: [
                EmergencyHeader(),
                Expanded(
                  flex: 1,
                  child: EmergencyDetails(),
                ),
                Expanded(
                  flex: 2,
                  child: EmergencyButton(),
                ),
                Expanded(
                  flex: 2,
                  child: EmergencyAddress(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
