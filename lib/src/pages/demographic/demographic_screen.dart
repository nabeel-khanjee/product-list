import 'package:flutter/services.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';

class DemographicScreen extends StatefulWidget {
  const DemographicScreen({super.key});

  @override
  State<DemographicScreen> createState() => _DemographicScreenState();
}

class _DemographicScreenState extends State<DemographicScreen> {
  int currentPage = 0;
  final formkey = GlobalKey<FormState>();

  final TextEditingController patientIdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MainScaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              // height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lighten(getThemeColor(context), 0.35)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IndicatorWidget(
                      onTap: () {
                        pageController.jumpToPage(0);
                        setState(() {
                          currentPage = 0;
                        });
                      },
                      isSelected: currentPage == 0,
                      title: StringConstants.personal,
                    ),
                    IndicatorWidget(
                      onTap: () {
                        pageController.jumpToPage(1);
                        setState(() {
                          currentPage = 1;
                        });
                      },
                      isSelected: currentPage == 1,
                      title: StringConstants.contact,
                    ),
                    IndicatorWidget(
                      onTap: () {
                        pageController.jumpToPage(2);
                        setState(() {
                          currentPage = 2;
                        });
                      },
                      isSelected: currentPage == 2,
                      title: StringConstants.insurance,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {},
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
                                TextFormField(
                                  strutStyle: StrutStyle(
                                    height: 1,
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  controller: patientIdcontroller,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontFamily:
                                              FontConstantc.gilroyMedium,
                                          color: darken(
                                            getThemeColor(context),
                                            0.4,
                                          )),
                                  decoration: InputDecoration(
                                      filled: true,
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: ColorConstants.greyText),
                                      // fillColor: ColorConstants.white,
                                      // labelText: StringConstants.patientID,
                                      // contentPadding: EdgeInsets.all(20),
                                      label: Text(
                                        StringConstants.patientID,
                                      ),
                                      border: UnderlineInputBorder(

                                          // gapPadding: 10,
                                          borderSide: BorderSide(
                                              color: ColorConstants.white,
                                              width: 0),
                                          borderRadius:
                                              BorderRadius.circular(15))),
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

class IndicatorWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const IndicatorWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 111,
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: getThemeColor(context))
            : null,
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: !isSelected
                  ? Theme.of(context).scaffoldBackgroundColor
                  : ColorConstants.white,
              fontFamily: FontConstantc.gilroySemiBold),
        )),
      ),
    );
  }
}
