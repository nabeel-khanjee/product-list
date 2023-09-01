import 'package:provider_app/src/app/app_export.dart';

class IndicatorWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const IndicatorWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 111,
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: getThemeColor(context))
            : null,
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: !isSelected
                  ? Theme.of(context).scaffoldBackgroundColor
                  : ColorConstants.white,
              fontFamily: FontConstantc.gilroySemiBold),
        )),
      ),
    );
  }
}
