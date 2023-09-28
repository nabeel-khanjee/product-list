import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/consent_form/components/consent_form_body.dart';

class ConsentFormScreen extends StatelessWidget {
  const ConsentFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: customGradientBg,
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  CustomAppBar(title: "Consent Form"),
                  ConsentFormBody(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
