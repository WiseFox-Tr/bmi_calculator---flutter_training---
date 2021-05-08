import 'dart:io';

class AppStrings {

  static const Map<String, Map<String, String>> languages = {
    'en' : {
      AppStringKeys.genderFemale : 'female',
      AppStringKeys.genderMale : 'male',
      AppStringKeys.title : 'BMI Calculator'
    },
    'fr' : {
      AppStringKeys.genderFemale : 'femme',
      AppStringKeys.genderMale : 'homme',
      AppStringKeys.title : 'BMI Calculator' //<-- same as english
    }
  };

  ///provides a map containing all strings to display for this app
  /// - in french if localeName = 'fr_FR'
  /// - in english in other cases
  /// to select a particular string : provides a key from AppStringKeys class
  static Map<String, String> get strings => Platform.localeName == 'fr_FR' ? languages['fr'] : languages['en'];
}

class AppStringKeys {
  static const String genderFemale = 'genderFemale';
  static const String genderMale = 'genderMale';
  static const String title = 'title';
}