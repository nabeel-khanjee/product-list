import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/doctor_detail/components/about_doctor_component.dart';
import 'package:provider_app/src/pages/doctor_detail/components/app_bar_doctor_detail_screen.dart';
import 'package:provider_app/src/pages/doctor_detail/components/avaliable_timing_component.dart';
import 'package:provider_app/src/pages/doctor_detail/components/doctor_rating_component.dart';
import 'package:provider_app/src/pages/doctor_detail/components/faq_component_doctor_detail_screen.dart';
import 'package:provider_app/src/pages/doctor_detail/components/review_patients_years_component.dart';
import 'package:provider_app/src/pages/doctor_detail/components/doctor_detail_screen_payment_and_specialization_component.dart';
import 'package:provider_app/src/pages/doctor_detail/model/faq_list.dart';

class DoctorDetailScreenBody extends StatelessWidget {
  const DoctorDetailScreenBody({
    super.key,
    required this.faqList,
  });

  final List<FaqList> faqList;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const DoctorNameAndRatingComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const DoctorDetailScreenPaymentAndSpecialization(),
                  const SizedBox(height: 10),
                  const ReviewPatientsYearsComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const AvaliableTimingComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  const AboutDoctorComponentDoctorDetailScreen(),
                  const SizedBox(height: 20),
                  FAQComponentDoctorDetailScreen(faqList: faqList)
                ]),
          ),
        ),
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [const AppBarDoctorDetailScreen()]);
  }
}
