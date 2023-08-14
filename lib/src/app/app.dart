
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
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}

Widget flavorBanner({
  required Widget child,
  bool show = true,
}) =>
    show
        ? Banner(
            child: child,
            location: BannerLocation.topStart,
            message: F.name,
            color: Colors.green.withOpacity(0.6),
            textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
                letterSpacing: 1.0),
            textDirection: TextDirection.ltr,
          )
        : Container(
            child: child,
          );
