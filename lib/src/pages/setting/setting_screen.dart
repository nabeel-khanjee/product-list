import 'package:provider_app/src/app/app_export.dart';

class SettingsScreen extends StatefulWidget {
  final SettingScreenArgs args;
  const SettingsScreen({super.key, required this.args});
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _receiveNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(StringConstants.settings)),
      body: SingleChildScrollView(
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
              SwitchListTile(
                title: Text(StringConstants.receiveNotifications),
                value: _receiveNotifications,
                onChanged: (newValue) {
                  setState(() {
                    _receiveNotifications = newValue;
                  });
                },
              ),
              ThemeSwitch(theme: widget.args.theme),
              AppColorPicker(theme: widget.args.theme),
              SelectLanguagesComponent(theme: widget.args.theme),
            ],
          ),
        ),
      ),
    );
  }
}
