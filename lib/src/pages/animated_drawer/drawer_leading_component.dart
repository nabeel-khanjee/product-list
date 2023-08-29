import 'package:provider_app/src/app/app_export.dart';

class DrawerLeadingComponent extends StatelessWidget {
  const DrawerLeadingComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => drawerStateChnageUpdateIndex(
            advancedDrawerController:
                BlocProvider.of<AnimatedDrawerCubit>(context)
                    .advancedDrawerController,
            isOpen: false,
            context: context),
        child: Container(
          margin: EdgeInsets.only(left: 12, top: 9, bottom: 9, right: 6),
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: darken(getThemeColor(context), 0.3)),
          child: Image.asset(
            AssetsConstants.drawerIcon,
          ),
        ));
  }
}
