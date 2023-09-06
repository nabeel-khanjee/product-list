import 'package:provider_app/src/app/app_export.dart';

enum Fruit { apple, banana }

class HousingAndUtilitiesScreen extends StatefulWidget {
  const HousingAndUtilitiesScreen({super.key});

  @override
  State<HousingAndUtilitiesScreen> createState() =>
      _HousingAndUtilitiesScreenState();
}

class _HousingAndUtilitiesScreenState extends State<HousingAndUtilitiesScreen> {
  Fruit? _fruit;

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              
              Text('1. ${StringConstants.whatIsYourHousingSituationToday}'),
            ],
          ),
          Column(children: [
            RadioListTile<Fruit>(
              contentPadding: EdgeInsets.zero,
              activeColor: (getThemeColor(context)),
              fillColor: MaterialStatePropertyAll(getThemeColor(context)),
              selectedTileColor: ColorConstants.black,
              title: const Text('Apple'),
              value: Fruit.apple,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            ),
            RadioListTile<Fruit>(
              contentPadding: EdgeInsets.zero,
              activeColor: (getThemeColor(context)),
              fillColor: MaterialStatePropertyAll(getThemeColor(context)),
              selectedTileColor: ColorConstants.black,
              title: const Text('Banana'),
              value: Fruit.banana,
              groupValue: _fruit,
              onChanged: (Fruit? value) {
                setState(() {
                  _fruit = value;
                });
              },
            )
          ]),
        ],
      ),
      isGradient: false,
      appBar: AppBarcomponent(
          isGradient: false,
          title: StringConstants.housingAndUtilities,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
