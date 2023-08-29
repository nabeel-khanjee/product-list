import 'package:provider_app/src/app/app_export.dart';

class MainScaffold extends StatelessWidget {
  final bool isGradient;
  final Widget appBar;

  const MainScaffold({
    super.key,
    required this.body,
    required this.isGradient,
    required this.appBar,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getThemeStateIsLight()
          ? isGradient
              ? Colors.transparent
              : Theme.of(context).scaffoldBackgroundColor
          : Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
          child: appBar, preferredSize: Size.fromHeight(kToolbarHeight)),
      body: body,
    );
  }
}
