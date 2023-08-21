import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/theme/dark_theme_data.dart';
import 'package:provider_app/src/theme/light_theme_data.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return RestartWidget(
      child: Consumer<MyTheme>(
        child: Container(),
        builder: (context, theme, _) {
          return MaterialApp(
            navigatorKey: navigationService?.navigatorKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowMaterialGrid: false,
            debugShowCheckedModeBanner: false,
            themeMode: theme.currentTheme(),
            darkTheme: darkThemeData(theme),
            title: F.title,
            theme: lightThemeData(theme),
            onGenerateRoute: onGenerateRoute,
          );
        },
      ),
    );
  }


}
