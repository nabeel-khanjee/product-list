import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/constant/bottom_sheet_component.dart';
import 'package:provider_app/src/pages/book_appointment/components/book_navbar_appointment_book_screen.dart';
import 'package:provider_app/src/pages/book_appointment_two/components/blood_group_list_component.dart';
import 'package:provider_app/src/pages/book_appointment_two/components/gender_component.dart';
import 'package:provider_app/src/pages/book_appointment_two/components/heading_small_component.dart';
import 'package:provider_app/src/pages/book_appointment_two/components/time_start_end_row_component.dart';
import 'package:provider_app/src/pages/book_appointment_two/data_list/blood_group_list.dart';

class BookAppointmentTwoScreen extends StatefulWidget {
  const BookAppointmentTwoScreen({super.key});

  @override
  State<BookAppointmentTwoScreen> createState() =>
      _BookAppointmentTwoScreenState();
}

class _BookAppointmentTwoScreenState extends State<BookAppointmentTwoScreen> {
  String? selectedBloodGroup;
  bool? isSelectedMale;
  Option? selectedOption;
  bool? isFemale;
  bool? isMale;

  @override
  Widget build(BuildContext context) {
    List<PaymentMethod> paymentMethods = [
      PaymentMethod(
          name: 'Visa',
          cardNumber: '****  ****  **** 0817',
          date: '15-02-2017',
          paymentImage: AssetsConstants.visaPaymentImage),
      PaymentMethod(
          name: 'MasterCard',
          cardNumber: '****  ****  **** 0817',
          date: '15-02-2017',
          paymentImage: AssetsConstants.masterCardPaymentImage),
    ];
    TextEditingController problemController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();
    return MainScaffold(
        bottomNavigationBar: BottomNavBarAppointmentBookScreen(
          text: 'Book Appointment',
          onTap: () {
            ShowBottomSheetComponent().showBottomSheet(
                isControlled: true,
                removeHeight: true,
                removePadding: true,
                content:
                    PaymentMethodBottomSheet(paymentMethods: paymentMethods),
                context: context);
          },
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Basic Information',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontFamily: FontConstantc.gilroySemiBold)),
                    TextFormFieldComponentProfile(
                        patientIdcontroller: fullNameController,
                        label: 'Full Name'),
                    DatePickerComponent(
                        country: const [],
                        datePickerTitle: 'Date of Birth',
                        getCityValue: (p1) {},
                        onDatePickerTap: () {},
                        onDropdownFieldTapCity: () {},
                        selectedDate: ''),
                    TextFormFieldComponentProfile(
                        patientIdcontroller: mobileNumberController,
                        label: 'Mobile Number'),
                    const TimeStartTimeEndRowComponent(),
                    DropDownComponentProfile(
                        items: const [],
                        selectedItem: (p0) {},
                        hintText: 'Specialist',
                        onDropdownFieldTap: () {}),
                    const SizedBox(height: 20),
                    const HeadingSmall(text: 'Blood Group'),
                    const SizedBox(height: 10),
                    BloodGroupListComponent(
                        onBloodGroupTap: (bloodGroup) =>
                            setState(() => selectedBloodGroup = bloodGroup),
                        bloodGroupList: bloodGroupList,
                        selectedBloodGroup: selectedBloodGroup),
                    const SizedBox(height: 20),
                    const HeadingSmall(text: 'Gender'),
                    const SizedBox(height: 10),
                    Row(children: [
                      GenderComponent(
                          text: StringConstants.male,
                          onTap: () => setState(() {
                                isMale = true;
                                isFemale = false;
                              }),
                          genderBool: isMale),
                      GenderComponent(
                          genderBool: isFemale,
                          onTap: () => setState(() {
                                isMale = false;
                                isFemale = true;
                              }),
                          text: "Female")
                    ]),
                    const SizedBox(height: 20),
                    TextFormFieldComponentProfile(
                        maxLines: 5,
                        patientIdcontroller: problemController,
                        hintText: 'Write your Problem',
                        label: '')
                  ])),
        ),
        appBar: const AppBarcomponent(
            isGradient: false,
            title: "Book Appointment",
            isBackAppBar: true,
            isTitleTowLines: false),
        isGradient: false);
  }
}

class PaymentMethodBottomSheet extends StatefulWidget {
  const PaymentMethodBottomSheet({
    super.key,
    required this.paymentMethods,
  });

  final List<PaymentMethod> paymentMethods;

  @override
  State<PaymentMethodBottomSheet> createState() =>
      _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) => Container(
          decoration: BoxDecoration(
              color: lighten(getThemeColor(context), 0.4),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Column(children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Details",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: darken(getThemeColor(context), 0.25),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SvgPicture.asset("assets/icon/cross.svg"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(color: ColorConstants.grey),
            const SizedBox(height: 10),
            Column(
              children: widget.paymentMethods
                  .asMap()
                  .entries
                  .map((paymentMethod) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
                          height: 143,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstants.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 96.6,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        paymentMethod.value.paymentImage,
                                        height: 23,
                                      ),
                                      Text(
                                        paymentMethod.value.cardNumber,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: ColorConstants.grey),
                                      ),
                                      Text('Added ${paymentMethod.value.date}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                                color: ColorConstants.greyText,
                                              ))
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 22),
                                  alignment: Alignment.centerRight,
                                  height: 96.6,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedPaymentMethod =
                                                paymentMethod.value.name;
                                          });
                                        },
                                        child: Image.asset(
                                          selectedPaymentMethod ==
                                                  paymentMethod.value.name
                                              ? AssetsConstants.checkIcon
                                              : AssetsConstants
                                                  .unSelectedCheckIcon,
                                          height: 24,
                                          width: 24,
                                        ),
                                      ),
                                      Image.asset(
                                        AssetsConstants.editIcon,
                                        height: 18,
                                        width: 18,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BottomNavBarAppointmentBookScreen(
                text: 'Pay Now',
                onTap: () {
                  if (selectedPaymentMethod == 'Visa') {
                    
                  } else if (selectedPaymentMethod == 'MasterCard') {}
                },
              ),
            )
          ])),
    );
  }
}

class PaymentMethod {
  final String paymentImage;
  final String cardNumber;
  final String date;
  final String name;

  PaymentMethod(
      {required this.name,
      required this.paymentImage,
      required this.cardNumber,
      required this.date});
}
