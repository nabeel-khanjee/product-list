import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/communication/past_records/components/past_records_body.dart';
import 'package:provider_app/src/pages/communication/past_records/components/past_records_months.dart';

class PastRecordsPageView extends StatelessWidget {
  const PastRecordsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PastRecordsMonths(),
        const PastRecordsBody(),
      ],
    );
  }
}
