import 'package:provider_app/src/app/app_export.dart';

class TopRatedDoctorBGImage extends StatelessWidget {
  const TopRatedDoctorBGImage({
    super.key,
    required this.element,
  });

  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        element.value.docImage,
        height: 180,
        width: 303,
      ),
    );
  }
}
