import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';
import 'package:provider_app/src/pages/demographic/components/profile_indicators_widgets.dart';
import 'package:provider_app/src/pages/demographic/inner_screens/patient_detail/patient_detail_screen.dart';

class DemographicScreen extends StatefulWidget {
  const DemographicScreen({super.key});

  @override
  State<DemographicScreen> createState() => _DemographicScreenState();
}

class _DemographicScreenState extends State<DemographicScreen> {
  int currentPage = 0;
  final formkey = GlobalKey<FormState>();
  final TextEditingController patientIdController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController suffixController = TextEditingController();
  final TextEditingController ssnController = TextEditingController();
  List<String> country = ['Pakistan', 'USA', "UAE"];
  List<String> states = ['Sindh', 'Punjab', "Blochistan"];
  String? selectedCountry;
  String? selectedStates;
  String? selectedGender;
  List<String> gender = [
    StringConstants.male,
    StringConstants.female,
  ];

  String? selectedDate;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MainScaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            ProfileIndicatorsWidget(
                onThirdIndicatorPresses: () {
                  pageController.jumpToPage(2);
                  setState(() => currentPage = 2);
                },
                onSecondIndicatorPresses: () {
                  pageController.jumpToPage(1);
                  setState(() => currentPage = 1);
                },
                onFirstIndicatorPresses: () {
                  pageController.jumpToPage(0);
                  setState(() => currentPage = 0);
                },
                currentPage: currentPage),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) => setState(() => currentPage = value),
                children: [
                  PatientDetailScreen(
                      onDropdownFieldTapCountry: () =>
                          setState(() => selectedCountry = null),
                      onDropdownFieldTapState: () =>
                          setState(() => selectedStates = null),
                      onDropdownFieldTapGender: () =>
                          setState(() => selectedGender = null),
                      onDropdownFieldTapCity: () =>
                          setState(() => selectedDate = null),
                      getStateValue: (value) =>
                          setState(() => selectedStates = value),
                      getGenderValue: (value) =>
                          setState(() => selectedGender = value),
                      getCityValue: (value) =>
                          setState(() => selectedCountry = value),
                      getCountryValue: (value) =>
                          setState(() => selectedCountry = value),
                      onDatePickerTap: () => showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now())
                          .then((value) => setState(() => selectedDate =
                              DateFormat('yyyy-MM-dd')
                                  .format(value!)
                                  .substring(0, 10))),
                      selectedCountry: selectedCountry,
                      titleDemographicInnerScreen:
                          StringConstants.patientDetails,
                      formkey: formkey,
                      patientIdController: patientIdController,
                      firstNameController: firstNameController,
                      middleNameController: middleNameController,
                      lastNameController: lastNameController,
                      suffixController: suffixController,
                      country: country,
                      selectedDate: selectedDate,
                      gender: gender,
                      selectedGender: selectedGender,
                      ssnController: ssnController,
                      selectedCity: selectedCountry,
                      states: states,
                      selectedStates: selectedStates),
                  Container(
                    child: Text('Contact'),
                  ),
                  Container(
                    child: Text('Insurance'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBarcomponent(
          actionTextButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Text(
              StringConstants.save,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: getThemeColor(context),
                  fontFamily: FontConstantc.gilroyMedium),
            )),
          ),
          isGradient: false,
          title: StringConstants.demographic,
          isBackAppBar: true,
          isTitleTowLines: false),
      isGradient: false,
    );
  }
}
