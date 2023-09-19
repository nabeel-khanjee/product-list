import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/doctor_detail/doctor_detail_screen.dart';

class AboutDoctorComponentDoctorDetailScreen extends StatelessWidget {
  const AboutDoctorComponentDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorDetailHeadingOne(
            heading: 'About Doctor',
            headingColor: ColorConstants.white,
            fontFamily: FontConstantc.gilroySemiBold),
        SizedBox(height: 10),
        DoctorDetailHeadingTwo(
          text:
              'Five ioasuod oasdioasjid oasjdiouasd oasjdoiasd oasdjioasdoi oasdjioasjd jaoisdjiioasd oasdioasjid oasjdiouasd oasjdoiasd oasdjioasdoi oasdjioasjd jaoisdjiioasd oasdioasjid oasjdiouasd oasjdoiasd oasdjioasdoi oasdjioasjd jaoisdjiioasd oasdioasjid oasjdiouasd oasjdoiasd oasdjioasdoi oasdjioasjd jaoisdjiioasd oasdioasjid oasjdiouasd oasjdoiasd oasdjioasdoi oasdjioasjd jaoisdjiioasd oasjsdioasd asdinasdoiasbdas uias dsiubasd aiasdbias diuassd  ias d oais isosdbioas di asd i ass doassdiasdiud ia sdibasip dpaisdbassd iassd  uiad  iqwdd qwiud quwidqw diq dq sdqiud qwdqw do q dqwdib qwd qiwod qwdhudbqi qsic oqwid q',
        ),
      ],
    );
  }
}
