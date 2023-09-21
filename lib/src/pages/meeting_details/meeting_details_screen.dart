import 'package:provider_app/src/app/app_export.dart';

class MeetingDetailsScreen extends StatelessWidget {
  const MeetingDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customGradientBg,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MeetingDetailsBody(),
                MeetingDetailsStepper(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
