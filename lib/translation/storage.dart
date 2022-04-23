import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Storage {
  static const LOCALE_COUNTRY = "localeCOUNTRY";
  static const LOCALE_LANGUAGE = "localeLANG";
  static const REMEMBERME = "rememberme";
  static const USERNAME = "username";

  static const API_TOKEN = "api_token";

  static const HAS_SHOP = "has_shop";
  static const IS_SHOP = "is_shop";

  static const PINN = "pinn";

  GetStorage localGetStorage = GetStorage();

  // get devices locale language
  Locale getLocale() {
    Locale localeD;
    String localeCOUNTRY = localGetStorage.read(LOCALE_COUNTRY) ?? "";
    String localeLANGUAGE = localGetStorage.read(LOCALE_LANGUAGE) ?? "";

    if (localeCOUNTRY != "" && localeLANGUAGE != "") {
      localeD = Locale(localeLANGUAGE, localeCOUNTRY);
    } else {
      localeD = Get.deviceLocale;
    }
    return localeD;
  }

  // set and update device locale
  setLocale(Locale locale) {
    localGetStorage.write(LOCALE_COUNTRY, locale.countryCode);
    localGetStorage.write(LOCALE_LANGUAGE, locale.languageCode);
    Get.updateLocale(locale);
    return;
  }

  // set remember me or not

}