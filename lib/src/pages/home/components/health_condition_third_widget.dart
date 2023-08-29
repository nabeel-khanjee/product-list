import 'package:provider_app/src/app/app_export.dart';

class HealthComditionThirdWidget extends StatelessWidget {
  final String icon;
  final String number;
  final String subText;
  final String cardText;
  final Color cardTextColor;

  const HealthComditionThirdWidget({
    super.key,
    required this.icon,
    required this.number,
    required this.subText,
    required this.cardText,
    required this.cardTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 3, right: 10, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: getThemeColor(context))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                  height: 20,
                  width: 20,
                ),
                Text(
                  cardText,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: cardTextColor,
                      fontWeight: FontWeight.w600,
                      height: 0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  number,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: ColorConstants.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6, left: 5),
                  child: Text(
                    subText,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: ColorConstants.greyText),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
