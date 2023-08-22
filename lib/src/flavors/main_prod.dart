import 'flavors.dart';
import 'package:provider_app/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  await runner.main();
}