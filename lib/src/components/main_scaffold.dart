import 'package:provider_app/src/app/app_export.dart';

class MainScaffold extends StatelessWidget {
  final bool isGradient;
  final Widget? appBar;
  final Widget? bottomNavigationBar;
  final double? preferredSizeAppBar;

  const MainScaffold({
    super.key,
    required this.body,
    required this.isGradient,
    this.appBar,
    this.bottomNavigationBar, this.preferredSizeAppBar,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: getThemeStateIsLight()
          ? isGradient
              ? Colors.transparent
              : Theme.of(context).scaffoldBackgroundColor
          : Theme.of(context).scaffoldBackgroundColor,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize:  Size.fromHeight(preferredSizeAppBar?? kToolbarHeight),
              child: appBar!)
          : null,
      body: body,
    );
  }
}
