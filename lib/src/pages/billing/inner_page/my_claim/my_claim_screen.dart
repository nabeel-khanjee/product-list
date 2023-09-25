import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/billing/inner_page/my_claim/components/claim_detail_componet.dart';

class MyClaimsScreen extends StatelessWidget {
  const MyClaimsScreen({
    super.key,
    required this.myClaimList,
  });

  final List<MyClaim> myClaimList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Column(
          children: myClaimList
              .asMap()
              .entries
              .map((myClaim) => Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                        color: darken(getThemeColor(context), 0.3),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            width: 1, color: getThemeColor(context))),
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClaimDetailsComponent(
                                heading: 'Claim ID',
                                value: myClaim.value.claimId),
                            ClaimDetailsComponent(
                                heading: 'Date of Service (DOS)',
                                value: myClaim.value.dateOfService),
                          ],
                        ),
                        Row(
                          children: [
                            ClaimDetailsComponent(
                                heading: 'Billed Amount',
                                value: myClaim.value.billedAmount),
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList())
    ]));
  }
}
