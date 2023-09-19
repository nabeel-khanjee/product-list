import 'package:provider_app/src/app/app_export.dart';

class BottomNavBarDoctorDetailScreen extends StatelessWidget {
  const BottomNavBarDoctorDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.transparent,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.white),
              padding: const EdgeInsets.all(20),
              child: Text(
                'Contact Dr.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: darken(getThemeColor(context), 0.4),
                    height: 1,
                    fontFamily: FontConstantc.gilroyMedium),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: getThemeColor(context)),
              padding: const EdgeInsets.all(20),
              child: Text(
                'Book Now',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: ColorConstants.white,
                    height: 1,
                    fontFamily: FontConstantc.gilroyMedium),
              ),
            ),
          )
        ],
      ),
    );
  }
}
