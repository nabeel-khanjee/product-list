import 'package:provider_app/src/app/app_export.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        SvgPicture.asset("assets/icon/otp_letter.svg"),
        SizedBox(height: 30),
        OTPFields(),
        SizedBox(height: 10),
        OTPButton(),
      ],
    );
  }
}
