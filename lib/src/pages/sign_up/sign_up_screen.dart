import '../../app/app_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  Text(
                    'Create New Account',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Container(),
                ],
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage("assets/images/company_logo.png"),
                height: 70,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
