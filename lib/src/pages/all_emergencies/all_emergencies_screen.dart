import 'package:provider_app/src/app/app_export.dart';

class AllEmergenciesScreen extends StatelessWidget {
  const AllEmergenciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customGradientBg,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  AllEmergenciesHeader(),
                  AllEmergenciesSearchBar(),
                  AllEmergenciesBody(),
                  AllEmergencyButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
