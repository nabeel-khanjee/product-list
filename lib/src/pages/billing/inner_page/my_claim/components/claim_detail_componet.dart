import 'package:provider_app/src/app/app_export.dart';

class ClaimDetailsComponent extends StatelessWidget {
  const ClaimDetailsComponent({
    super.key,
    required this.heading,
    required this.value,
  });

  final String heading;
  final String value;

  @override
  Widget build(BuildContext context) {
    TextEditingController patientResponsibilityController =
        TextEditingController();
    TextEditingController amountController = TextEditingController();
    TextEditingController advancePaymentController = TextEditingController();

    return Expanded(
        child: InkWell(
      onTap: () {
        if (heading.toLowerCase() == 'action'.toLowerCase()) {
          ShowBottomSheetComponent().showBottomSheet(
              removePadding: true,
              isControlled: true,
              removeHeight: true,
              content: PaymentResponsibilityComponent(),
              context: context);
        }
      },
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontFamily: FontConstantc.gilroyMedium,
                    color: lighten(getThemeColor(context), 0.3))),
            Text(value,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: FontConstantc.gilroyMedium,
                    color: ColorConstants.white))
          ]),
    ));
  }
}

class PaymentResponsibilityComponent extends StatefulWidget {
  const PaymentResponsibilityComponent({
    super.key,
  });

  @override
  State<PaymentResponsibilityComponent> createState() =>
      _PaymentResponsibilityComponentState();
}

class _PaymentResponsibilityComponentState
    extends State<PaymentResponsibilityComponent> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    TextEditingController patientResponsibilityController =
        TextEditingController();
    TextEditingController amountController = TextEditingController();
    TextEditingController advancePaymentController = TextEditingController();
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
                "Payment Responsibility",
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
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: getThemeColor(context))),
              child: TextFormFieldComponentProfile(
                  lableColor: getThemeColor(context),
                  verticalPadding: 0,
                  patientIdcontroller: patientResponsibilityController,
                  label: 'Patient Responsibilty'),
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
                        patientIdcontroller: amountController,
                        label: 'Amount'),
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
                        patientIdcontroller: advancePaymentController,
                        label: 'Advance Payment'),
                  ),
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
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: getThemeColor(context))),
              child: DropDownComponentProfile(
                textColor: getThemeColor(context),
                verticalMargin: 0,
                items: const ["Card", "Cash", "Cheque"],
                selectedItem: (paymentMethod) {
                  setState(() {
                    selectedPaymentMethod = paymentMethod;
                  });
                },
                value: selectedPaymentMethod,
                hintText: 'Payment Mode',
                onDropdownFieldTap: () {
                  setState(() {
                    selectedPaymentMethod = null;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: BottomNavBarAppointmentBookScreen(
                  horizontalPadding: 0,
                  verticalPadding: 15,
                  text: 'Pay Now',
                  onTap: () {
                    if (selectedPaymentMethod == 'Card') {
                      ShowBottomSheetComponent().showBottomSheet(
                          isControlled: true,
                          removeHeight: true,
                          removePadding: true,
                          content: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: lighten(getThemeColor(context), 0.4),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16))),
                            child: Column(
                              
                            ),
                          ),
                          context: context);
                    } else if (selectedPaymentMethod == 'Cash') {
                      AlertDialogComponent.showDialogComponent(
                          alertDialog: const AlertDialog(
                            insetPadding: EdgeInsets.all(16),
                            contentPadding: EdgeInsets.zero,
                            content: FailedDialog(),
                          ),
                          context: context);
                    } else if (selectedPaymentMethod == 'Cheque') {
                      AlertDialogComponent.showDialogComponent(
                          alertDialog: const AlertDialog(
                            insetPadding: EdgeInsets.all(16),
                            contentPadding: EdgeInsets.zero,
                            content: FailedDialog(),
                          ),
                          context: context);
                    } else {
                      ToastComponent3(context)
                          .showToast(context, 'Please select payment mode');
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
