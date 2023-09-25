import 'package:provider_app/src/app/app_export.dart';

class ClaimDetailsComponent extends StatelessWidget {
  const ClaimDetailsComponent({
    super.key,
    required this.heading,
    required this.value,
  });

  final String heading;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(heading,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontFamily: FontConstantc.gilroyMedium,
                  color: lighten(getThemeColor(context), 0.3))),
          Text(value,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: FontConstantc.gilroyMedium,
                  color: ColorConstants.white))
        ]));
  }
}
