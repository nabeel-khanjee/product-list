import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/card_formater.dart';
import 'package:provider_app/src/components/main_scaffold.dart';
import 'package:provider_app/src/components/text_field_component.dart';
import 'package:provider_app/src/pages/demographic/components/profile_indicators_widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MainScaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            ProfileIndicatorsWidget(
                onThirdIndicatorPresses: () {
                  pageController.jumpToPage(2);
                  setState(() {
                    currentPage = 2;
                  });
                },
                onSecondIndicatorPresses: () {
                  pageController.jumpToPage(1);
                  setState(() {
                    currentPage = 1;
                  });
                },
                onFirstIndicatorPresses: () {
                  pageController.jumpToPage(0);
                  setState(() {
                    currentPage = 0;
                  });
                },
                currentPage: currentPage),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          StringConstants.patientDetails,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: getThemeColor(context),
                                  fontFamily: FontConstantc.gilroySemiBold),
                        )),
                        Form(
                            key: formkey,
                            child: Column(
                              children: [
                                TextFormFieldComponentProfile(
                                    label: StringConstants.patientID,
                                    patientIdcontroller: patientIdController,
                                    listTextInputFormatter: [
                                      CardFormatter(
                                          sample: 'xxxx-xxxx-xxxx-xxxx',
                                          separator: '-')
                                    ]),
                                TextFormFieldComponentProfile(
                                  label: StringConstants.firstName,
                                  patientIdcontroller: firstNameController,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
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
