
import 'package:provider_app/src/app/app_export.dart';

class DropDownComponentProfile extends StatelessWidget {
  const DropDownComponentProfile({
    super.key,
    required this.items,
    required this.selectedItem,
    this.value,
    required this.hintText,
    this.suffixIcon,
    required this.onDropdownFieldTap,
  });
  final String? value;
  final String? suffixIcon;
  final String hintText;
  final List<String> items;
  final Function(String?) selectedItem;
  final VoidCallback onDropdownFieldTap;

  @override
  Widget build(BuildContext context) {
    String? value = this.value;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: ColorConstants.white),
      child: Stack(
        alignment: getCurrentLanguageDirection()
            ? Alignment.centerLeft
            : Alignment.centerRight,
        children: [
          value != null
              ? InkWell(
                  onTap: onDropdownFieldTap,
                  child: Container(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hintText,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: ColorConstants.greyText),
                        ),
                        Text(
                          value,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: ColorConstants.greyText),
                        )
                      ],
                    ),
                  ),
                )
              : DropdownButton<String>(
                  value: value,
                  isExpanded: true,
                  hint: Text(
                    hintText,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: ColorConstants.greyText),
                  ),
                  icon: Container(),
                  underline: Container(),
                  items: items.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: getThemeColor(context)),
                      ),
                    );
                  }).toList(),
                  onChanged: (_) => selectedItem(_),
                ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                suffixIcon ?? AssetsConstants.arrowDownDropdownIcon,
                height: 24,
                width: 24,
                color: ColorConstants.greyText,
              )),
        ],
      ),
    );
  }
}
