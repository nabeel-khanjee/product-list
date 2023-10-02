import 'package:provider_app/src/app/app_export.dart';

class ChequePaymentWidget extends StatelessWidget {
  const ChequePaymentWidget({
    super.key,
    required this.amountController,
    required this.patientResponsibilityController,
  });
  final TextEditingController amountController;
  final TextEditingController patientResponsibilityController;

  @override
  Widget build(BuildContext context) {
    final TextEditingController recievedByController = TextEditingController();
    final TextEditingController chequeNoController = TextEditingController();
    final TextEditingController chequeDateController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lighten(getThemeColor(context), 0.4),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Check Payment Mode",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: getThemeColor(context))),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextFormFieldComponentProfile(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        patientIdcontroller: recievedByController,
                        label: 'Account No.'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponentProfile(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        patientIdcontroller: chequeNoController,
                        label: 'Check No.'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponentProfile(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        patientIdcontroller: chequeDateController,
                        label: 'Check Date'),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(width: 2, color: getThemeColor(context)),
                    ),
                    child: TextFormFieldComponentProfile(
                        lableColor: getThemeColor(context),
                        verticalPadding: 0,
                        patientIdcontroller: amountController,
                        textInputType: TextInputType.number,
                        label: 'Amount Paid'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: BottomNavBarAppointmentBookScreen(
                  horizontalPadding: 0,
                  verticalPadding: 15,
                  text: 'Pay Now',
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
