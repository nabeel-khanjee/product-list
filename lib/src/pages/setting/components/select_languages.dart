import 'package:provider_app/src/app/app_export.dart';

class SelectLanguagesComponent extends StatelessWidget {
  const SelectLanguagesComponent({
    super.key,
  });

 
  @override
  Widget build(BuildContext context) {
    List<LanguageSetting> languageSetting = [
      LanguageSetting(languageCode: 'ur', region: "PK", name: "Urdu"),
      LanguageSetting(languageCode: 'en', region: "US", name: "English"),
      LanguageSetting(languageCode: 'ar', region: "AE", name: "Arabic"),
      LanguageSetting(languageCode: 'es', region: "ES", name: "Spanish"),
      LanguageSetting(languageCode: 'hi', region: "IN", name: "Hindi"),
    ];
    return Container(
      padding: const EdgeInsets.all(
        18,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.selectLanguage,
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: languageSetting.length,
            itemBuilder: (context, index) => LanguageConponent(
              onTap: () async {
                await context.setLocale(
                  Locale(
                    languageSetting[index].languageCode,
                    languageSetting[index].region,
                  ),
                );
                RestartWidget.restartApp(context);
              },
              text: languageSetting[index].name,
            ),
          )
        ],
      ),
    );
  }
}

