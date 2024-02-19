import 'package:intl/intl.dart';

class TFormatters {
  static String formatDate(DateTime?date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(
          3, 6)}${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(
          4, 7)}${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }


  static String internationalFormatPhoneNumber(String phoneNumbers) {
    //Remove any non digit Charecters from thr phone number
    var digitsOnly = phoneNumbers.replaceAll(RegExp(r'\D'), '');
    //Extract the country code from the digitalOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //Add the remaining digits with proper formatting
    final formattednumber = StringBuffer();
    formattednumber.write(countryCode);

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = 1 + groupLength;
      formattednumber.write(digitsOnly.substring(i, end));
      if (end < digitsOnly.length) {
        formattednumber.write(' ');
      }
      i = end;
    }
    return formattednumber.toString();
  }

}
