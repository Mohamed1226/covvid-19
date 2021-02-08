

import 'dart:async';
import 'dart:convert';

import 'package:covvid19app/localization/localization_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SetLocalization {
  final Locale locale;

  SetLocalization(this.locale);

  static SetLocalization of(BuildContext context) {
    return Localizations.of<SetLocalization>(context, SetLocalization);
  }

  static const LocalizationsDelegate<SetLocalization> localizationsDelegate =
  _SetLocalizationsDelegate();

  Map<String, String> _localizationStrings;

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString(
        'assets/${locale.languageCode}.json');

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizationStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  String translate(String key) {
    return _localizationStrings[key];
  }
  String getCurrentCode(){
    print(" lan ${locale.languageCode}");
    return locale.languageCode;

}
}

class _SetLocalizationsDelegate extends LocalizationsDelegate<SetLocalization>{

  const _SetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
//    print(locale.languageCode);
    // TODO: implement isSupported
    return ["en" , 'ar'].contains(locale.languageCode);
  }

  @override
  Future<SetLocalization> load(Locale locale) async {
    SetLocalization localization = new SetLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<SetLocalization> old) {
    // TODO: implement shouldReload
    return false;
  }
}