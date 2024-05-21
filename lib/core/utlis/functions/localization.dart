import 'package:intl/intl.dart';

abstract class Localization {
  static bool isArabic() {
    return Intl.getCurrentLocale() == "ar";
  }
}
