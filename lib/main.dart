import 'package:patient_app/src/app/app_export.dart';

FutureOr<void> main() async {
  runApp(
    ChangeNotifierProvider<MyTheme>(
      create: (_) => new MyTheme(),
      child: const App(),
    ),
  );
}
