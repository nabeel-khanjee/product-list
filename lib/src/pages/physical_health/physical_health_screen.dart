import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';
import 'package:provider_app/src/pages/demographic/components/indicator_widgets.dart';
import 'package:provider_app/src/pages/demographic/components/profile_indicators_widgets.dart';
import 'package:provider_app/src/pages/physical_health/inner_pages/health_tracker/health_tracker_screen.dart';
import 'package:provider_app/src/pages/physical_health/inner_pages/medications/medications_screen.dart';

class PhysicalHealthScreen extends StatefulWidget {
  const PhysicalHealthScreen({super.key});

  @override
  State<PhysicalHealthScreen> createState() => _PhysicalHealthScreenState();
}

class _PhysicalHealthScreenState extends State<PhysicalHealthScreen> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        appBar: AppBarcomponent(
            isGradient: false,
            title: StringConstants.physicalHealth,
            isBackAppBar: true,
            actionTextButton: currentPage == 0
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              AssetsConstants.editTextIcon,
                              color: getThemeColor(context),
                              height: 22,
                            ),
                            Text(
                              StringConstants.edit,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: getThemeColor(context),
                                      fontFamily: FontConstantc.gilroyMedium),
                            ),
                          ],
                        )),
                  )
                : null,
            isTitleTowLines: false),
        body: Container(
          margin: const EdgeInsets.all(12),
          child: Column(children: [
            ProfileIndicatorsWidget(children: [
              Expanded(
                child: IndicatorWidget(
                  onTap: () {
                    pageController.jumpToPage(0);
                    setState(() => currentPage = 0);
                  },
                  isSelected: currentPage == 0,
                  title: StringConstants.healthTracker,
                ),
              ),
              Expanded(
                child: IndicatorWidget(
                  onTap: () {
                    pageController.jumpToPage(1);
                    setState(() => currentPage = 1);
                  },
                  isSelected: currentPage == 1,
                  title: StringConstants.medications,
                ),
              ),
            ]),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: const [HealthTrackerScreem(), MadicationsScreen()],
              ),
            )
          ]),
        ),
        isGradient: false);
  }
}
