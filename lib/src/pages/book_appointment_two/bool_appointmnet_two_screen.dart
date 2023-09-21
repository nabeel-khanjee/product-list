import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/book_appointment/components/book_navbar_appointment_book_screen.dart';

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
    List<BloodGroup> bloodGroupList = [
      BloodGroup(bloddGroud: 'AB+'),
      BloodGroup(bloddGroud: 'AB-'),
      BloodGroup(bloddGroud: 'A+'),
      BloodGroup(bloddGroud: 'A-'),
      BloodGroup(bloddGroud: 'B+'),
      BloodGroup(bloddGroud: 'B-'),
      BloodGroup(bloddGroud: '0+'),
      BloodGroup(bloddGroud: '0-'),
    ];
    return MainScaffold(
        bottomNavigationBar:
            const BottomNavBarAppointmentBookScreen(text: 'Book Appointment'),
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

class GenderComponent extends StatelessWidget {
  const GenderComponent({
    super.key,
    required this.genderBool,
    required this.onTap,
    required this.text,
  });

  final bool? genderBool;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                border: Border.all(color: lighten(getThemeColor(context), 0.1)),
                borderRadius: BorderRadius.circular(11),
                color: darken(getThemeColor(context), 0.3),
              ),
              padding: const EdgeInsets.all(3),
              child: genderBool == true
                  ? Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: lighten(getThemeColor(context), 0.1)),
                    )
                  : Container(),
            ),
            const SizedBox(width: 20),
            Text(text)
          ],
        ),
      ),
    );
  }
}

class HeadingSmall extends StatelessWidget {
  const HeadingSmall({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontFamily: FontConstantc.gilroyMedium));
  }
}

class BloodGroupListComponent extends StatelessWidget {
  const BloodGroupListComponent({
    super.key,
    required this.bloodGroupList,
    required this.selectedBloodGroup,
    required this.onBloodGroupTap,
  });

  final List<BloodGroup> bloodGroupList;
  final String? selectedBloodGroup;
  final Function(String? bloodGroup) onBloodGroupTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: bloodGroupList
            .asMap()
            .entries
            .map((bloodGroup) => InkWell(
                  onTap: () {
                    onBloodGroupTap(bloodGroup.value.bloddGroud);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 52,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: selectedBloodGroup == bloodGroup.value.bloddGroud
                            ? lighten(getThemeColor(context), 0.1)
                            : darken(getThemeColor(context), 0.3)),
                    child: Center(child: Text(bloodGroup.value.bloddGroud)),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class TimeStartTimeEndRowComponent extends StatelessWidget {
  const TimeStartTimeEndRowComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          TimeSelectionWidget(
            text: 'Start Time',
          ),
          SizedBox(width: 8),
          TimeSelectionWidget(text: 'End Time'),
        ],
      ),
    );
  }
}

class BloodGroup {
  final String bloddGroud;

  BloodGroup({required this.bloddGroud});
}

class TimeSelectionWidget extends StatelessWidget {
  const TimeSelectionWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorConstants.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorConstants.greyText,
                      )),
              Image.asset(
                AssetsConstants.timeInputFieldIcon,
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
