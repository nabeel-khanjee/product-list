import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/constant/language_constants/get_current_language_text_direction.dart';
import 'package:provider_app/src/theme/get_theme_state.dart';

class HomeScreenComponent extends StatefulWidget {
  HomeScreenComponent({
    super.key,
    required this.snap,
    required this.theme,
  });
  final bool snap;
  final MyTheme theme;

  @override
  State<HomeScreenComponent> createState() => _HomeScreenComponentState();
}

class _HomeScreenComponentState extends State<HomeScreenComponent> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => _handleMenuButtonPressedToClose(
                  advancedDrawerController: _advancedDrawerController),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  right: 25,
                  left: 25,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: getThemeStateIsLight()
                        ? lighten(widget.theme.getColor())
                        : darken(widget.theme.getColor(), 0.5),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: lighten(widget.theme.getColor(), 0.3)),
                        borderRadius: BorderRadius.circular(30),
                        color: getThemeStateIsLight()
                            ? lighten(widget.theme.getColor())
                            : darken(widget.theme.getColor(), 0.5),
                      ),
                      child: Icon(
                        Icons.close,
                        size: 16,
                        color: lighten(widget.theme.getColor(), 0.3),
                      )),
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            tileMode: TileMode.mirror,
            end: Alignment.topCenter,
            colors: [
              !getThemeStateIsLight()
                  ? Theme.of(context).scaffoldBackgroundColor
                  : darken(widget.theme.getColor(), 0.3),
              !getThemeStateIsLight()
                  ? Theme.of(context).scaffoldBackgroundColor
                  : widget.theme.getColor(),
            ],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(
        milliseconds: 300,
      ),
      animateChildDecoration: true,
      rtlOpening: getCurrentLanguageDirection(),
      openScale: 0.65,
      openRatio: 0.5,

      disabledGestures: true,

      childDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          border: Border(
            bottom: BorderSide(
              color: widget.theme.getColor(),
              width: 20,
            ),
            top: BorderSide(width: 20, color: widget.theme.getColor()),
            left: BorderSide(
              color: widget.theme.getColor(),
              width: 20,
            ),
            right: BorderSide(
              color: widget.theme.getColor(),
              width: 20,
            ),
          )),
      // key: widget._scaffoldKey,
      drawer: AppDrawer(theme: widget.theme),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Scaffold(
          
          body: HomeScreenBody(
            snap: widget.snap,
            
            onTap: () => _handleMenuButtonPressed(
                advancedDrawerController: _advancedDrawerController),
          ),
          floatingActionButton: HomePageFloatingButton(),
        ),
      ),
    );
  }

  _handleMenuButtonPressed(
      {required AdvancedDrawerController advancedDrawerController}) {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    advancedDrawerController.value = AdvancedDrawerValue.visible();
    advancedDrawerController.showDrawer();
  }

  _handleMenuButtonPressedToClose(
      {required AdvancedDrawerController advancedDrawerController}) {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    advancedDrawerController.value = AdvancedDrawerValue.hidden();
    advancedDrawerController.hideDrawer();
  }
}
