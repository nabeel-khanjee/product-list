import 'package:provider_app/src/app/app_export.dart';

class DoctorDetailScreenPaymentAndSpecialization extends StatelessWidget {
  const DoctorDetailScreenPaymentAndSpecialization({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DoctorDetailHeadingTwo(text: 'General Physician'),
        Row(
          children: [
            DoctorDetailHeadingOne(
                fontFamily: FontConstantc.gilroySemiBold,
                heading: '\$39',
                headingColor: ColorConstants.greenIndicatorColor),
            DoctorDetailHeadingOne(
                fontFamily: FontConstantc.gilroyRegular,
                heading: '/h',
                headingColor: ColorConstants.greenIndicatorColor),
          ],
        )
      ],
    );
  }
}
