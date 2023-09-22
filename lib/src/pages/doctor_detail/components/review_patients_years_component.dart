import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/doctor_detail/doctor_detail_screen.dart';

class ReviewPatientsYearsComponentDoctorDetailScreen extends StatelessWidget {
  const ReviewPatientsYearsComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: darken(getThemeColor(context), 0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            children: [
              DoctorDetailHeadingOne(
                  heading: '348',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(text: 'Reviews')
            ],
          ),
          Container(
            width: 1,
            height: 60,
            color: getThemeColor(context),
          ),
          const Column(
            children: [
              DoctorDetailHeadingOne(
                  heading: '700+',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(text: 'Patients')
            ],
          ),
          Container(width: 1, height: 60, color: getThemeColor(context)),
          const Column(
            children: [
              DoctorDetailHeadingOne(
                  heading: '15',
                  headingColor: ColorConstants.white,
                  fontFamily: FontConstantc.gilroySemiBold),
              DoctorDetailHeadingTwo(text: 'Years')
            ],
          )
        ],
      ),
    );
  }
}
