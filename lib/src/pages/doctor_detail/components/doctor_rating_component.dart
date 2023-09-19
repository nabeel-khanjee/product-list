import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/doctor_detail/doctor_detail_screen.dart';

class DoctorNameAndRatingComponentDoctorDetailScreen extends StatelessWidget {
  const DoctorNameAndRatingComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DoctorDetailHeadingOne(
              fontFamily: FontConstantc.gilroySemiBold,
              headingColor: ColorConstants.white,
              heading: 'Dr. Rachel McAdams'),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(AssetsConstants.ratingIcon,
                  height: 13, width: 14)),
          Text('(4.3)',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  height: 1, fontFamily: FontConstantc.gilroySemiBold))
        ]);
  }
}
