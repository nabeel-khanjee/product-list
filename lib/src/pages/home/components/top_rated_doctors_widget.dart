import 'package:provider_app/src/app/app_export.dart';

class TopDatedDoctorsWidget extends StatelessWidget {
  const TopDatedDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TopRatedDoctorData> topRateDoctor = [
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
      TopRatedDoctorData(
          spec: StringConstants.heartSpecialist,
          rating: StringConstants.fourPointThree,
          docName: StringConstants.drRachelBrown,
          docImage: AssetsConstants.doctorImageHomePage),
    ];

    return Column(
      children: [
        HomeWidgetHeading(
            title: StringConstants.topDoctors,
            isSeeAll: true,
            bottonPadding: 10,
            topPadding: 22),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: topRateDoctor
                .asMap()
                .entries
                .map((element) => TopRatedDoctorHomeCard(element: element))
                .toList(),
          ),
        )
      ],
    );
  }
}
