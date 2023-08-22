import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/src/app/app_export.dart';
import 'package:provider_app/src/pages/home/cubit/animated_drawer_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
  });
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => drawerStateChnageUpdateIndex(isOpen: false, context: context),
              icon: Icon(Icons.more_vert_rounded)),
          title: Text(StringConstants.settings)),
      body: SettingScreenBody(),
    );
  }
}

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.generalSettings,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ThemeSwitch(),
            AppColorPicker(),
            SelectLanguagesComponent(),
          ],
        ),
      ),
    );
  }
}
