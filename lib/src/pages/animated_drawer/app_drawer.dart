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
<<<<<<< HEAD
            .map((e) => Container(
                  padding: EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                      if (e.value.isInnerPage) {
                        drawerStateChnageUpdateIndex(
                            advancedDrawerController:
                                BlocProvider.of<AnimatedDrawerCubit>(context)
                                    .advancedDrawerController,
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
=======
            .map((element) => DrawerElementTileWidget(element: element))
>>>>>>> d402a254026e1230d98f14ee0de1c04a126af532
            .toList(),
      ),
    );
  }
}


