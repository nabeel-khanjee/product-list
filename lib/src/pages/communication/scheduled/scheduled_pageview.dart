import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/communication/scheduled/components/scheduled_body.dart';

class ScheduledPageView extends StatelessWidget {
  const ScheduledPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScheduledBody(),
      ],
    );
  }
}
