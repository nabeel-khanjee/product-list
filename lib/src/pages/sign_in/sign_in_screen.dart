import '../../app/app_export.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back, color: ColorConstants.white),
                  Container(),
                ],
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/company_logo.png"),
                height: 125,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
