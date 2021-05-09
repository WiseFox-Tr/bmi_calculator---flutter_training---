import 'dart:io';

class AppStrings {

  static const Map<String, Map<String, String>> _languages = {
    'en' : {
      AppStringKey.appTitle : 'BMI Calculator',
      AppStringKey.btnCalculate : 'calculate',
      AppStringKey.btnReCalculate : 're-calculate',
      AppStringKey.cm : ' cm',
      AppStringKey.genderFemale : 'female',
      AppStringKey.genderMale : 'male',
      AppStringKey.indicatorModerateObesity : 'moderate obesity',
      AppStringKey.indicatorMorbidObesity : 'morbid obesity',
      AppStringKey.indicatorNormal : 'normal',
      AppStringKey.indicatorOverweight :'overweight',
      AppStringKey.indicatorUndernourishment : 'undernourishment',
      AppStringKey.indicatorSeriousObesity : 'serious obesity',
      AppStringKey.indicatorThinness : 'thinness',
      AppStringKey.labelAge : 'age',
      AppStringKey.labelHeight : 'height',
      AppStringKey.labelNonRelevant : 'non relevant',
      AppStringKey.labelWeight : 'weight',
      AppStringKey.textModerateObesity : 'Your weight is too important, consider to consult a specialist!',
      AppStringKey.textMorbidObesity :'Your are at great risk, please refer to a specialist to save your life...',
      AppStringKey.textNonRelevantOlder : 'BMI is not a pertinent indicator for seniors... prefer to find a more detailed tool.',
      AppStringKey.textNonRelevantYoungster : 'BMI is not a pertinent indicator for children & teenagers... sorry try it later !',
      AppStringKey.textNormal : 'Your weight seems well, good job!',
      AppStringKey.textOverweight : 'You are on overweight, maybe consider to eat a little more healthy and practise some exercises.',
      AppStringKey.textPregnancyWarning : '\nPlease note that these results are not reliable if you are pregnant.',
      AppStringKey.textUndernourishment : 'You are in severe underweight, don\'t hesitate to consult a specialist.',
      AppStringKey.textSeriousObesity : 'Your weight says that you really need to refer to a specialist!',
      AppStringKey.textThinness : 'Your weight is little low, consider to eat a little more.',
      AppStringKey.titleResult : 'Your results'
    },
    'fr' : {
      AppStringKey.appTitle : 'Calculateur d\'IMC',  //<-- same as english
      AppStringKey.btnCalculate : 'calculer',
      AppStringKey.btnReCalculate : 're-calculer',
      AppStringKey.cm : ' cm', //<-- same as english
      AppStringKey.genderFemale : 'femme',
      AppStringKey.genderMale : 'homme',
      AppStringKey.indicatorModerateObesity : 'obésité modérée',
      AppStringKey.indicatorMorbidObesity : 'obésité morbide',
      AppStringKey.indicatorNormal : 'normal',
      AppStringKey.indicatorOverweight :'surpoids',
      AppStringKey.indicatorUndernourishment : 'sous-alimentation',
      AppStringKey.indicatorSeriousObesity : 'obésité sérieuse',
      AppStringKey.indicatorThinness : 'maigreur',
      AppStringKey.labelAge : 'âge',
      AppStringKey.labelHeight : 'taille',
      AppStringKey.labelNonRelevant : 'non pertinent',
      AppStringKey.labelWeight : 'poids',
      AppStringKey.textModerateObesity : 'Votre poids est trop important, songez à consulter un spécialiste !',
      AppStringKey.textMorbidObesity :'Vous êtes en grand danger, s\'il vous plait sauvez votre vie, consultez un spécialiste',
      AppStringKey.textNonRelevantOlder : 'L\'IMC n\'est pas un indicateur pertinent pour les seniors ... préférez utiliser un outil plus précis.',
      AppStringKey.textNonRelevantYoungster : 'L\'IMC n\'est pas un indicateur pertinent pour les enfants et les adolescents.... essayez plus tard !',
      AppStringKey.textNormal : 'Vous semblez avoir un bon poids, bien joué !',
      AppStringKey.textOverweight : 'Vous êtes en surpoids, peut-être pourriez vous songer à manger un peu plus sainement et à pratiquer un peu d\'activité physique',
      AppStringKey.textPregnancyWarning : '\nS\'il vous plait, prenez en compte que ces résultats ne sont pas pertients si vous êtes enceinte',
      AppStringKey.textUndernourishment : 'Votre poids est bien trop faible, n\'hésitez pas à consulter un spécialiste.',
      AppStringKey.textSeriousObesity : 'Votre poids nous indique que vous avez vraiment besoin de consulter un spécialiste!',
      AppStringKey.textThinness : 'Votre poids est un peu faible, songez à manger un peu plus !',
      AppStringKey.titleResult : 'Vos résultats'
    }
  };

  ///provides a map containing all strings to display for this app
  /// - in french if localeName = 'fr_FR'
  /// - in english in other cases
  /// to select a particular string : provides a key from AppStringKeys class
  static Map<String, String> get strings => Platform.localeName == 'fr_FR' ? _languages['fr'] : _languages['en'];
}

class AppStringKey {
  static const String appTitle = 'appTitle';
  static const String btnCalculate = 'btnCalculate';
  static const String btnReCalculate = 'btnReCalculate';
  static const String cm = 'cm';
  static const String genderFemale = 'genderFemale';
  static const String genderMale = 'genderMale';
  static const String indicatorModerateObesity = 'indicatorModerateObesity';
  static const String indicatorMorbidObesity ='indicatorMorbidObesity';
  static const String indicatorNormal = 'indicatorNormal';
  static const String indicatorOverweight = 'indicatorOverweight';
  static const String indicatorUndernourishment = 'indicatorUndernourishment';
  static const String indicatorSeriousObesity ='indicatorSeriousObesity';
  static const String indicatorThinness = 'indicatorThinness';
  static const String labelAge = 'labelAge';
  static const String labelHeight = 'labelHeight';
  static const String labelNonRelevant = 'labelNonRelevant';
  static const String labelWeight = 'labelWeight';
  static const String textModerateObesity = 'textModerateObesity';
  static const String textMorbidObesity ='textMorbidObesity';
  static const String textNonRelevantOlder = 'textNonRelevantOlder';
  static const String textNonRelevantYoungster = 'textNonRelevantYoungster';
  static const String textNormal='textNormal';
  static const String textOverweight = 'textOverweight';
  static const String textPregnancyWarning = 'textPregnancyWarning';
  static const String textUndernourishment = 'textUndernourishment';
  static const String textSeriousObesity = 'textSeriousObesity';
  static const String textThinness = 'textThinness';
  static const String titleResult = 'titleResult';
}

