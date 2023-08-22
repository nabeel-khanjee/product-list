import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/home/cubit/animated_drawer_cubit.dart';

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
        pageIndex: 8,
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
            .map((e) => Container(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      if (e.value.isInnerPage) {
                        drawerStateChnageUpdateIndex(
                            isOpen: true,
                            context: context,
                            index: e.value.pageIndex);
                      } else {
                        NavigationUtil.push(
                          context,
                          e.value.route,
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          e.value.icon,
                          height: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          e.value.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: ColorConstants.white),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class RouteListApp {
  final String name;
  final String route;
  final String icon;
  final bool isInnerPage;
  final int pageIndex;

  RouteListApp({
    required this.isInnerPage,
    required this.pageIndex,
    required this.name,
    required this.route,
    required this.icon,
  });
}
