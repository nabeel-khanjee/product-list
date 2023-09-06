import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/animated_drawer/route_list_app_args.dart';

class DrawerElementTileWidget extends StatelessWidget {
  const DrawerElementTileWidget({
    super.key,
    required this. element,
  });
  final MapEntry<int, RouteListApp> element;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          if (element.value.isInnerPage) {
            drawerStateChnageUpdateIndex(
                advancedDrawerController:
                    BlocProvider.of<AnimatedDrawerCubit>(context)
                        .advancedDrawerController,
                isOpen: true,
                context: context,
                index: element.value.pageIndex);
          } else {
            NavigationUtil.push(
              context,
              element.value.route,
            );
          }
        },
        child: Row(
          children: [
            Image.asset(
              element.value.icon,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              element.value.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: ColorConstants.white),
            ),
          ],
        ),
      ),
    );
  }
}
