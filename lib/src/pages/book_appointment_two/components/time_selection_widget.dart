import 'package:provider_app/src/app/app_export.dart';

class TimeSelectionWidget extends StatelessWidget {
  const TimeSelectionWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: ColorConstants.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: ColorConstants.greyText,
                      )),
              Image.asset(
                AssetsConstants.timeInputFieldIcon,
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
