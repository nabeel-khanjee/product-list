import 'package:patient_app/src/app/app_export.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi ',
              style: FontStylesConstants.nonito(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: MyTheme.isDark
                      ? ColorConstants.white
                      : ColorConstants.black),
            ),
            Text(
              'Nabbel ',
              style: FontStylesConstants.nonito(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: MyTheme.isDark
                      ? ColorConstants.white
                      : ColorConstants.black),
            ),
          ],
        ),
        Text(
          F.title,
          style: FontStylesConstants.nonito(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: MyTheme.isDark
                  ? ColorConstants.white
                  : ColorConstants.black),
        ),
      ],
    );
  }
}
