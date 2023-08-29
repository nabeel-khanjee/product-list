import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/constant/font_constants.dart';
import 'package:provider_app/src/pages/home/components/upcomming_appointment_list.dart';

class UpcommingAppointmentHomeCard extends StatelessWidget {
  const UpcommingAppointmentHomeCard({
    super.key,
    required this.element,
  });
  final MapEntry<int, UpCommingAppointmentData> element;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 160,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lighten(getThemeColor(context),
              double.parse((element.key * 0.1).toString()))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).scaffoldBackgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Image.asset(
                    AssetsConstants.calenderIcon,
                    height: 12,
                    width: 12,
                  ),
                ),
                Text(
                  element.value.date,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: ColorConstants.white,
                      fontWeight: FontWeight.w600,
                      height: 0),
                )
              ],
            ),
          ),
          Text(
            element.value.title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: element.value.titleColor,
                fontFamily: FontConstantc.gilroySemiBold,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          Text(
            element.value.dec,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: element.value.decColor,
                fontWeight: FontWeight.w600,
                height: 0),
          ),
          Row(
            children: [
              Image.asset(
                element.value.docImage,
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                element.value.docName,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontFamily: FontConstantc.gilroyMedium,
                    color: ColorConstants.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
