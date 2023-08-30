import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/components/appbar_component.dart';
import 'package:provider_app/src/components/main_scaffold.dart';

class DemographicScreen extends StatelessWidget {
  const DemographicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Container(),
      isGradient: false,
      appBar: AppBarcomponent(
          actionTextButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Text(
                StringConstants.save,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: getThemeColor(context),
                    fontFamily: FontConstantc.gilroyMedium),
              ),
            ),
          ),
          isGradient: false,
          title: StringConstants.demographic,
          isBackAppBar: true,
          isTitleTowLines: false),
    );
  }
}
