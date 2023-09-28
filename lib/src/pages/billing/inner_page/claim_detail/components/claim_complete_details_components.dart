import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/billing/inner_page/my_claim/components/claim_detail_componet.dart';

class ClaimCompleteDetailsComponent extends StatelessWidget {
  const ClaimCompleteDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      ClaimDetailsComponent(heading: 'Claim ID', value: '368 DX 589'),
      ClaimDetailsComponent(
          heading: 'Date of Service (DOS)', value: '04/16/2023')
    ]);
  }
}
