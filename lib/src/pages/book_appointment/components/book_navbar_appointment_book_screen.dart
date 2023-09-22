import 'package:provider_app/src/app/app_export.dart';

class BottomNavBarAppointmentBookScreen extends StatelessWidget {
  const BottomNavBarAppointmentBookScreen({
    super.key,
    required this.text, required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      height: kToolbarHeight + kToolbarHeight / 2,
      child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)))),
          onPressed: onTap,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontFamily: FontConstantc.gilroySemiBold),
          )),
    );
  }
}
