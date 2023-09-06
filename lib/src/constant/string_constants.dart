import 'package:provider_app/src/app/app_export.dart';

class StringConstants {
  static String language = 'ur_PK';

  static String get tablet => _getLang('tablet');

  static String get hrs => _getLang('hrs');
  static String get every => _getLang('every');
  static String get mgPerDl => _getLang('mgPerDl');
  static String get anxiety => _getLang('anxiety');
  static String get depression => _getLang('depression');
  static String get mild => _getLang('mild');
  static String get moderate => _getLang('moderate');
  static String get circumference => _getLang('circumference');
  static String get waist => _getLang('waist');
  static String get head => _getLang('head');
  static String get pulseRate => _getLang('pulseRate');
  static String get respiratory => _getLang('respiratory');
  static String get diabetic => _getLang('diabetic');
  static String get sugarFasting => _getLang('sugarFasting');
  static String get sugarRandom => _getLang('sugarRandom');
  static String get inches => _getLang('inches');
  static String get bmi => _getLang('bmi');
  static String get height => _getLang('height');
  static String get kgPerMerterSquare => _getLang('kgPerMerterSquare');
  static String get merterSquare => _getLang('merterSquare');
  static String get healthTracker => _getLang('healthTracker');
  static String get medications => _getLang('medications');
  static String get edit => _getLang('edit');
  static String get secondaryInsurance => _getLang('secondaryInsurance');
  static String get primaryInsurance => _getLang('primaryInsurance');
  static String get insuranceName => _getLang('insuranceName');
  static String get healthPlan => _getLang('healthPlan');
  static String get memberId => _getLang('memberId');
  static String get insuranceGroup => _getLang('insuranceGroup');
  static String get endDate => _getLang('endDate');
  static String get bin => _getLang('bin');
  static String get pharmacy => _getLang('pharmacy');
  static String get payerId => _getLang('payerId');
  static String get rxBin => _getLang('rxBin');
  static String get rxGroup => _getLang('rxGroup');
  static String get rxGroupPCN => _getLang('rxGroupPCN');

  static String get contactDetails => _getLang('contactDetails');
  static String get cellPhoneNumber => _getLang('cellPhoneNumber');
  static String get residenceNumber => _getLang('residenceNumber');
  static String get address => _getLang('address');
  static String get emergancyContactInfo => _getLang('emergancyContactInfo');
  static String get name => _getLang('name');
  static String get relation => _getLang('relation');
  static String get contactNumber => _getLang('contactNumber');
  static String get yourPharmacyAddress => _getLang('yourPharmacyAddress');
  static String get pharmacyName => _getLang('pharmacyName');
  static String get city => _getLang('city');
  static String get phoneNumber => _getLang('phoneNumber');
  static String get selectCity => _getLang('selectCity');
  static String get zipCode => _getLang('zipCode');
  static String get insurance => _getLang('insurance');
  static String get male => _getLang('male');
  static String get female => _getLang('female');
  static String get contact => _getLang('contact');
  static String get personal => _getLang('personal');
  static String get patientDetails => _getLang('patientDetails');
  static String get patientID => _getLang('patientID');
  static String get firstName => _getLang('firstName');
  static String get middleName => _getLang('middleName');
  static String get lastName => _getLang('lastName');
  static String get suffix => _getLang('suffix');
  static String get dateOfBirth => _getLang('dateOfBirth');
  static String get gender => _getLang('gender');
  static String get ssn => _getLang('ssn');
  static String get selectCountry => _getLang('selectCountry');
  static String get selectState => _getLang('selectState');
  static String get onboardingText => _getLang('onboardingText');
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
