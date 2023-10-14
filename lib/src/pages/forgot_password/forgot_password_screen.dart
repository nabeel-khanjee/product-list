import 'package:provider_app/src/app/app_export.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              ForgotPasswordHeader(),
              ForgotPasswordBody(),
            ],
          ),
        ),
      ),
    );
  }
}
