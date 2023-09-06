import '../../../app/app_export.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(StringConstants.account),
        SizedBox(height: 25),
        _buildEmailField(context),
        SizedBox(height: 20),
        _buildPasswordField(context),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            NavigationUtil.push(
              context,
              RouteConstants.forgotPasswordRoute,
            );
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(StringConstants.forgot),
          ),
        ),
        SizedBox(height: 40),
        _signInButton(context),
        SizedBox(height: 50),
        SocialLogin(),
      ],
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: darken(getThemeColor(context), 0.25),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset('assets/icon/email.svg'),
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 20),
        labelText: StringConstants.email,
        labelStyle: TextStyle(color: ColorConstants.white),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: darken(getThemeColor(context), 0.25),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset('assets/icon/password.svg'),
        ),
        prefixIconConstraints: BoxConstraints(minHeight: 20),
        labelText: StringConstants.password,
        labelStyle: TextStyle(color: ColorConstants.white),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset('assets/icon/eye.svg'),
        ),
        suffixIconConstraints: BoxConstraints(minHeight: 20),
      ),
    );
  }

  Widget _signInButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          NavigationUtil.push(
            context,
            RouteConstants.homeRoute,
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          StringConstants.signIn,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
