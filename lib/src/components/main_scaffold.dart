import 'package:provider_app/src/app/app_export.dart';

class MainScaffold extends StatelessWidget {
  final bool isGradient;
  final Widget? appBar;
  final Widget? bottomNavigationBar;

  const MainScaffold({
    super.key,
    required this.body,
    required this.isGradient,
    this.appBar, this.bottomNavigationBar,
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
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: appBar!)
          : null,
      body: body,
    );
  }
}
