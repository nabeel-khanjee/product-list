import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/animated_drawer/drawer_element_tile_widget.dart';
import 'package:provider_app/src/pages/animated_drawer/route_list_app_args.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<RouteListApp> drawerElements = [
      RouteListApp(
        isInnerPage: true,
        pageIndex: 0,
        name: StringConstants.home,
        route: RouteConstants.homeRoute,
        icon: AssetsConstants.homeIcon,
      ),
      RouteListApp(
        isInnerPage: true,
        name: StringConstants.profile,
        route: RouteConstants.profileRoute,
        icon: AssetsConstants.profileIcon,
        pageIndex: 1,
      ),
      RouteListApp(
        isInnerPage: true,
        pageIndex: 2,
        name: StringConstants.settings,
        route: RouteConstants.settingRoute,
        icon: AssetsConstants.settingIcon,
      ),
    ];
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: drawerElements
            .asMap()
            .entries
            .map((element) => DrawerElementTileWidget(element: element))
            .toList(),
      ),
    );
  }
}