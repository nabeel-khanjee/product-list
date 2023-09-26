import 'package:provider_app/src/app/app_export.dart';

class DoctorComponent extends StatelessWidget {
  const DoctorComponent(
      {super.key, required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationUtil.push(context, RouteConstants.chatRoute);
      },
      child: Container(
        height: 96,
        width: double.infinity,
        decoration: BoxDecoration(
          color: darken(getThemeColor(context), 0.25),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 84,
              width: 74,
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(imageUrl),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  "Voice Call",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: ColorConstants.white.withOpacity(0.6),
                      ),
                ),
                Row(
                  children: [
                    appointmentSlot(context, " 28 min"),
                    const SizedBox(width: 20),
                    appointmentSlot(context, " Orthopaedic"),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                NavigationUtil.push(
                  context,
                  RouteConstants.videoCallingRoute,
                );
              },
              child: SvgPicture.asset("assets/icon/call.svg"),
            ),
          ],
        ),
      ),
    );
  }

  Widget appointmentSlot(BuildContext _, String title) {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: ColorConstants.white.withOpacity(0.6),
          size: 15,
        ),
        Text(
          title,
          style: Theme.of(_).textTheme.labelSmall!.copyWith(
                color: ColorConstants.white.withOpacity(0.6),
              ),
        )
      ],
    );
  }
}
