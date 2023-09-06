import 'package:provider_app/src/app/app_export.dart';

class OTPHeader extends StatelessWidget {
  const OTPHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Verify your email',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Please enter the 4 digit code sent to',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorConstants.greyText),
          ),
          SizedBox(height: 5),
          Text('atriatech@gmail.com'),
        ],
      ),
    );
  }
}
