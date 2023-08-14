import 'package:patient_app/src/app/app_export.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyTheme>(
      child: Container(),
      builder: (context, theme, _) {
        return MaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          themeMode: theme.currentTheme(),
          darkTheme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: theme.getColor(),
              brightness: Brightness.dark
              // primarySwatch: Colors.blue,
              ),
          title: F.title,
          theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: theme.getColor(),
              brightness: Brightness.light
              // primarySwatch: Colors.blue,
              ),
              home: OnboardingScreen(),
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}