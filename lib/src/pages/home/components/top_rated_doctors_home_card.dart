
import 'package:provider_app/src/app/app_export.dart';

class TopRatedDoctorHomeCard extends StatelessWidget {
  const TopRatedDoctorHomeCard({
    super.key,
    required this.element,
  });
  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        children: [
          TopRatedDoctorBGImage(element: element),
          TopRatedDoctorFrontElementGradient(element: element),
        ],
      ),
    );
  }
}


