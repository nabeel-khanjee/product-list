import 'package:provider_app/src/app/app_export.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, required this.args});
  final BillingArgs args;

  @override
  Widget build(BuildContext context) {
    return IsGradientBackGround(
        isBackAppBar: true,
        appbarText: 'Payments',
        body: MainScaffold(body: Container(), isGradient: true));
  }
}
