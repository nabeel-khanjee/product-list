import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/components/check_box_tile_component.dart';
import 'package:provider_app/src/pages/mental_health/mental_health_inner_pages/cage_aid/data_list/cage_aid_appbar_options_data_list.dart';

class CheckBoxListTileComponent extends StatelessWidget {
  const CheckBoxListTileComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: cageAidAppBarOptions
            .asMap()
            .entries
            .map(
              (item) => CheckBoxTileComponent(item: item),
            )
            .toList());
  }
}
