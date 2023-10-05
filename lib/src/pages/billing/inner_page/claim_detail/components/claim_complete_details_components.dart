import 'package:provider_app/src/app/app_export.dart';

class ClaimCompleteDetailsComponent extends StatelessWidget {
  const ClaimCompleteDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      ClaimDetailsComponent(heading: 'Payment ID', value: '368 DX 589'),
      ClaimDetailsComponent(
          heading: 'Date of Service (DOS)', value: '04/16/2023')
    ]);
  }
}
