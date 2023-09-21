import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/visit_clinic/components/visit_clinic_categories.dart';
import 'package:provider_app/src/pages/visit_clinic/components/visit_clinic_search_bar.dart';
import 'package:provider_app/src/pages/visit_clinic/components/visit_clinic_show_doctors.dart';

class VisitClinicScreen extends StatelessWidget {
  const VisitClinicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const CustomAppBar(title: "Visit Clinic"),
              const SizedBox(height: 20),
              const VisitClinicSearchBar(),
              const SizedBox(height: 20),
              VisitClinicCategories(),
              const SizedBox(height: 20),
              const VisitClinicShowDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
