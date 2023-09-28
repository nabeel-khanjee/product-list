import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/review/components/review_content.dart';
import 'package:provider_app/src/pages/review/components/review_profile.dart';
import 'package:provider_app/src/pages/review/components/review_submit.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CustomAppBar(title: "Review"),
              SizedBox(height: 20),
              ReviewContent(),
              SizedBox(height: 10),
              ReviewProfile(),
              SizedBox(height: 20),
              ReviewSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
