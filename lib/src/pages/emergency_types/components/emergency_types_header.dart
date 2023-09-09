import 'package:provider_app/src/app/app_export.dart';

class EmergencyTypesHeader extends StatelessWidget {
  const EmergencyTypesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.arrow_back),
            ),
            Text(
              "Emergency",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Container(),
          ],
        ),
      ],
    );
  }
}
