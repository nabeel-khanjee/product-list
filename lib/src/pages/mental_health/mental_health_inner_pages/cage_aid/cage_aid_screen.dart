import 'package:provider_app/src/app/app_export.dart';

List<EstateRoom> estateRooms = [
  EstateRoom(false, "Double Suite"),
  EstateRoom(false, "Double Suite"),
  EstateRoom(false, "Double Suite"),
  EstateRoom(false, "Double Suite"),
  EstateRoom(false, "Double Suite"),
  EstateRoom(false, "Family suite")
];

class EstateRoom {
  bool isSelected;
  String name;

  EstateRoom(this.isSelected, this.name);
}

class CageAidScreen extends StatelessWidget {
  const CageAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        body: Container(padding: const EdgeInsets.all(12), child: Container()),
        isGradient: false,
        preferredSizeAppBar: kToolbarHeight * 3.5,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 3.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarcomponent(
                  isGradient: false,
                  title: StringConstants.cageAid,
                  isBackAppBar: true,
                  isTitleTowLines: false),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: estateRooms
                      .asMap()
                      .entries
                      .map(
                        (item) => InkWell(
                          onTap: () =>
                              item.value.isSelected = !item.value.isSelected,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                      color: item.value.isSelected
                                          ? getThemeColor(context)
                                          : darken(getThemeColor(context), 0.3),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Icon(
                                    Icons.check,
                                    size: 12,
                                    color: item.value.isSelected
                                        ? ColorConstants.white
                                        : lighten(getThemeColor(context), 0.1),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(item.value.name)
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList())
            ],
          ),
        ));
  }
}
