import 'package:intl/intl.dart';

class CurrencyFormatter {
  static final NumberFormat _numberFormatter = NumberFormat("#,##,###.##");
  static final NumberFormat _compactCurrencyFormatter =
  NumberFormat.compactSimpleCurrency(locale: "en_IN");
  static final NumberFormat _compactFormatter = NumberFormat.compact(
    locale: "en_IN",
  );

  static String getFormattedAmount(dynamic value) {
    return value <= 100000
        ? "\u20B9${_numberFormatter.format(value)}"
        : _compactCurrencyFormatter.format(value);
  }

  static String formatNumber(dynamic value) {
    return _compactFormatter.format(value);
  }

  static String formatNumber2(dynamic value) {
    return _numberFormatter.format(value);
  }
}