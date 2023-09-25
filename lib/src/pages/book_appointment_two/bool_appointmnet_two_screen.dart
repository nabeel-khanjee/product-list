import 'package:provider_app/src/app/app_export.dart';

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
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
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
                    ]))),
        appBar: const AppBarcomponent(
            isGradient: false,
            title: "Book Appointment",
            isBackAppBar: true,
            isTitleTowLines: false),
        isGradient: false);
  }
}
