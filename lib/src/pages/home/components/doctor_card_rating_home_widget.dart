import 'package:provider_app/src/app/app_export.dart';

class DoctorCardRatingHomeWidget extends StatelessWidget {
  const DoctorCardRatingHomeWidget({
    super.key,
    required this.element,
  });

  final MapEntry<int, TopRatedDoctorData> element;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.all(10),
            padding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200.withOpacity(0.7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsConstants.ratingIcon,
                  width: 13,
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    element.value.rating,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                            color: ColorConstants.black,
                            fontFamily: FontConstantc.gilroyMedium),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
