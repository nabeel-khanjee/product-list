import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/search_doctor/components/search_doctor_categories.dart';
import 'package:provider_app/src/pages/search_doctor/components/search_doctor_search_%20bar.dart';
import 'package:provider_app/src/pages/search_doctor/components/search_doctor_show_doctors.dart';

class SearchDoctorScreen extends StatelessWidget {
  const SearchDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CustomAppBar(title: "Search Doctor"),
              const SizedBox(height: 20),
              const SearchDoctorSearchBar(),
              const SizedBox(height: 20),
              SearchDoctorCategories(),
              const SizedBox(height: 20),
              const SearchDoctorShowDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
