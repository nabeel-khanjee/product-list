import 'package:provider_app/src/app/app_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        body: Column(
          children: [
            UserProfileComponent(),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(children: [
                AppTileComponent(
                  isExpandable: false,
                  test: StringConstants.demographicProfile,
                  image: AssetsConstants.demographicProfile,
                  onTap: () {},
                ),
                ExpansionPanelListComponent(),
                AppTileComponent(
                  isExpandable: false,
                  test: StringConstants.familyHealthProfile,
                  image: AssetsConstants.familyHealthProfile,
                  onTap: () {},
                ),
              ]),
            ),
          ],
        ),
        isBackAppBar: false,
        appbarText: StringConstants.profile);
  }
}

