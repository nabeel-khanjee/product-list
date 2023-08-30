import 'package:provider_app/src/app/app_export.dart';

class StringConstants {
  static String language = 'ur_PK';

  static String get demographic => _getLang('demographic');
  static String get searchDoctorOrAnything =>
      _getLang('searchDoctorOrAnything');
  static String get healthConditions => _getLang('healthConditions');
  static String get seeAll => _getLang('seeAll');
  static String get bloodPressure => _getLang('bloodPressure');
  static String get pulse => _getLang('pulse');
  static String get perMin => _getLang('perMin');
  static String get checkup => _getLang('checkup');
  static String get temp => _getLang('temp');
  static String get weight => _getLang('weight');
  static String get normal => _getLang('normal');
  static String get mmHg => _getLang('mmHg');
  static String get oF => _getLang('oF');
  static String get kg => _getLang('kg');
  static String get upcomingAppointments => _getLang('upcomingAppointments');
  static String get eightMar0920am => _getLang('8Mar0920am');
  static String get videoConsultation => _getLang('videoConsultation');
  static String get waitingForCall => _getLang('waitingForCall');
  static String get audioConsultation => _getLang('audioConsultation');
  static String get drRachelBrown => _getLang('drRachelBrown');
  static String get diagnosticTests => _getLang('diagnosticTests');
  static String get topDoctors => _getLang('topDoctors');
  static String get drLouisaJackson => _getLang('drLouisaJackson');
  static String get heartSpecialist => _getLang('heartSpecialist');
  static String get bookNow => _getLang('bookNow');
  static String get fourPointThree => _getLang('fourPointThree');
  static String get howAreYouFeelingToday => _getLang('howAreYouFeelingToday');
  static String get demographicProfile => _getLang('demographicProfile');
  static String get healthProfile => _getLang('healthProfile');
  static String get socialHealth => _getLang('socialHealth');
  static String get mentalHealth => _getLang('mentalHealth');
  static String get familyHealthProfile => _getLang('familyHealthProfile');
  static String get physicalHealth => _getLang('physicalHealth');
  static String get saveChanges => _getLang('saveChanges');
  static String get save => _getLang('save');
  static String get otherSettings => _getLang('otherSettings');
  static String get selectLanguage => _getLang('selectLanguage');
  static String get themeDarkLight => _getLang('themeDarkLight');
  static String get receiveNotifications => _getLang('receiveNotifications');
  static String get settings => _getLang('settings');
  static String get profile => _getLang('profile');
  static String get home => _getLang('home');
  static String get generalSettings => _getLang('generalSettings');
  static String get selectColor => _getLang('selectColor');
  static String get onboardingText => _getLang('onboardingText');
  static String get getStarted => _getLang('getStarted');
  static String get changeLanguage => _getLang('changeLanguage');
  static String get changeLocation => _getLang('changeLocation');
  static String get notification => _getLang('notification');
  static String get newsletters => _getLang('newsletters');
  static String get offersAndPromotions => _getLang('offersAndPromotions');

  static String _getLang(String s) {
    return languageSelector(s);
  }

  static String languageSelector(String s) {
    if (navigationService!.navigatorKey.currentContext!.locale.toString() ==
        'ur_PK') {
      return UrduConstant.urduLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'en_US') {
      return EnglishConstant.englishLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'hi_IN') {
      return HindiConstant.hindiLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'ar_AE') {
      return ArabicConstant.arabicLabels[s] ?? '';
    } else if (navigationService!.navigatorKey.currentContext!.locale
            .toString() ==
        'es_ES') {
      return SpanishConstant.spanishLabels[s] ?? '';
    } else {
      return EnglishConstant.englishLabels[s] ?? '';
    }
  }
}
