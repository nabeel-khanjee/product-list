import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/forgot_password/components/forgot_password_body.dart';
import 'package:provider_app/src/pages/forgot_password/components/forgot_password_header.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
