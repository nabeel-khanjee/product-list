import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/doctor_detail/doctor_detail_screen.dart';

class AvaliableTimingComponentDoctorDetailScreen extends StatelessWidget {
  const AvaliableTimingComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorDetailHeadingOne(
            heading: 'Avaliable Timings',
            headingColor: ColorConstants.white,
            fontFamily: FontConstantc.gilroySemiBold),
        SizedBox(height: 10),
        DoctorDetailHeadingTwo(
          text: 'Monday - Friday 08:00 - 20:00',
        ),
      ],
    );
  }
}
