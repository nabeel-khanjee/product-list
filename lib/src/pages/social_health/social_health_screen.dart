import 'package:provider_app/src/app/app_export.dart';

class SocialHealthScreen extends StatelessWidget {
  const SocialHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<SocialHealthListData> socialHealthListData = [
      SocialHealthListData(
          route: RouteConstants.housingAndUtilitiesRoute,
          icon: AssetsConstants.housingAndUtilitiesIcon,
          isCompleted: true,
          title: StringConstants.housingAndUtilities),
      SocialHealthListData(
          route: RouteConstants.foodRoute,
          icon: AssetsConstants.foodIcon,
          isCompleted: false,
          title: StringConstants.food),
      SocialHealthListData(
          icon: AssetsConstants.transportationAndChildCareIcon,
          isCompleted: false,
          route: RouteConstants.transportationAndChildCareRoute,
          title: StringConstants.transportationAndChildCare),
      SocialHealthListData(
          route: RouteConstants.educationAndEmploymentAndFinanceRoute,
          icon: AssetsConstants.educationAndEmploymentAndFinanceIcon,
          isCompleted: true,
          title: StringConstants.educationAndEmploymentAndFinance),
      SocialHealthListData(
          route: RouteConstants.personalSafetyRoute,
          icon: AssetsConstants.personalSafetyIcon,
          isCompleted: true,
          title: StringConstants.personalSafety),
    ];
    return MainScaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: socialHealthListData
              .asMap()
              .entries
              .map((element) => SocialHealthTile(element: element))
              .toList(),
        ),
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.socialHealth,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
