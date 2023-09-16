import 'package:provider_app/src/app/app_export.dart';

class PastRecordsMonths extends StatelessWidget {
  PastRecordsMonths({super.key});

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: months.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
                right: (months.length - 1 == index) ? 0.0 : 10.0),
            child: Container(
              height: 40,
              width: 52,
              decoration: BoxDecoration(
                color: darken(getThemeColor(context), 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  months[index],
                  style: TextStyle(
                    color: ColorConstants.white.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
