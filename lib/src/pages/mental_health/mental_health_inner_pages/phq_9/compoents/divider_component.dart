import 'package:provider_app/src/app/app_export.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 1.5,
          )),
        ],
      ),
    );
  }
}
