import 'package:provider_app/src/app/app_export.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                elevation: const MaterialStatePropertyAll(0),
                maximumSize:
                    const MaterialStatePropertyAll(Size.fromHeight(38)),
                minimumSize:
                    const MaterialStatePropertyAll(Size.fromHeight(38)),
                padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                backgroundColor: MaterialStatePropertyAll(
                    (darken(getThemeColor(context), 0.3)))),
            onPressed: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: Icon(Icons.arrow_left_rounded, size: 36)),
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text('Prev',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontFamily: FontConstantc.gilroyMedium)))
                ])));
  }
}
