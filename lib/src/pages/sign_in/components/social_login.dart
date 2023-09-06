import 'package:provider_app/src/app/app_export.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/icon/apple_icon.svg",
              height: 62,
            ),
            SvgPicture.asset(
              "assets/icon/facebook_icon.svg",
              height: 62,
            ),
            SvgPicture.asset(
              "assets/icon/google_icon.svg",
              height: 48,
            ),
          ],
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: 'Don\'t have an account? ',
            children: [
              TextSpan(
                text: 'Create Account',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.lightBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    NavigationUtil.push(
                      context,
                      RouteConstants.signUpRoute,
                    );
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}