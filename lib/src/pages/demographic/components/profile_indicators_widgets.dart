import 'package:provider_app/src/app/app_export.dart';

class ProfileIndicatorsWidget extends StatelessWidget {
  const ProfileIndicatorsWidget({
    super.key,
    // required this.currentPage,
   required this.children,
  });

  // final int currentPage;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lighten(getThemeColor(context), 0.35)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
