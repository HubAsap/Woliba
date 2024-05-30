import 'dart:math';
import 'dart:core';
import 'package:intl/intl.dart';

class ValueHelper {
  // Email validation
  static bool isValidEmail(String email) {
    final emailRegex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }

  // Number validation
  static bool isValidNumber(String input) {
    return int.tryParse(input) != null;
  }

  // Phone Number validation
  static bool isValidPhoneNumber(String input) {
    return int.tryParse(input) != null && (input.length == 11 || input.length == 10);
  }

  // Double validation
  static bool isValidDouble(String input) {
    return double.tryParse(input) != null;
  }

  // Password validation
  static bool isValidPassword(String password) {
    // Add your password validation logic here
    return password.length >= 8;
  }

  // Username validation
  static bool isValidUsername(String username) {
    // Check if the username contains only periods, underscores, and numbers
    RegExp regex = RegExp(r'^[._a-zA-Z0-9]+$');

    return regex.hasMatch(username) && username.length >= 4 && username.length <= 20;
  }

  static String extractUuid(String url) {
    // Define a regular expression to match the UUID pattern
    RegExp regex = RegExp(r'uuid=([a-zA-Z0-9-]+)');

    // Extract the UUID from the URL
    Match? match = regex.firstMatch(url);

    if (match != null) {
      // Extracted UUID
      String uuid = match.group(1)!;
      return uuid;
    } else {
      return "";
    }
  }

  // Nigerian phone number validation
  static bool isValidNigerianPhoneNumber(String phoneNumber) {
    final phoneRegex = RegExp(r'^\+234\d{10}$');
    return phoneRegex.hasMatch(phoneNumber);
  }

  // Random string generator
  static String generateRandomString(int max, {String? charLibrary}) {
    charLibrary ??= "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    final result = StringBuffer();
    final random = Random();
    while (0 < max--) {
      result.write(charLibrary![random.nextInt(charLibrary.length)]);
    }
    return result.toString();
  }


  // Random uppercase letters and digits only
  static String generateRandomCapsLetterAndDigitsOnly(int max) {
    return generateRandomString(max, charLibrary: "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890");
  }

  // Random uppercase letters and digits only (minimum set)
  static String generateRandomCapsLetterAndDigitsOnlyMin(int max) {
    return generateRandomString(max, charLibrary: "ABCDEFGHJKMNPQRSTUVWXYZ23456789");
  }

  // Random binary only
  static int generateRandomBinaryOnly({int max = 1}) {
    return int.parse(generateRandomString(max, charLibrary: "01"));
  }

  static String addDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return '$day' + 'th';
    }

    switch (day % 10) {
      case 1:
        return '$day' + 'st';
      case 2:
        return '$day' + 'nd';
      case 3:
        return '$day' + 'rd';
      default:
        return '$day' + 'th';
    }
  }

  // Random digits only
  static int generateRandomDigitsOnly(int max) {
    return int.parse(generateRandomString(max, charLibrary: "1234567890"));
  }

  // Check if letter is uppercase
  static bool isLetterUpperCase(String c) {
    return c == c.toUpperCase();
  }

  // Check if letter is lowercase
  static bool isLetterLowerCase(String c) {
    return c == c.toLowerCase();
  }

  // Check if character is a digit
  static bool isDigit(String c) {
    return int.tryParse(c) != null;
  }

  // Check if character is a symbol
  static bool isSymbol(String c) {
    return c.isNotEmpty && !isDigit(c) && isLetterLowerCase(c) && !isLetterUpperCase(c);
  }

  // Balance formatter without decimal places
  static String balanceFormatterNoDecimalPlace(String currencySymbol, double balance) {
    final format = NumberFormat.currency(
      decimalDigits: 0,
      symbol: currencySymbol,
    );
    return format.format(balance);
  }

  // Balance formatter with decimal places
  static String balanceFormatter(String currencySymbol, double balance) {
    final format = NumberFormat.currency(
      decimalDigits: 2,
      symbol: currencySymbol,
    );
    return format.format(balance);
  }

  // Capitalize first letter of a word
  static String capitalizeFirstLetter(String word) {
    return word.isNotEmpty
        ? word[0].toUpperCase() + word.substring(1)
        : '';
  }

  // Handle username
  static String handleUsername(String username) {
    List<String> parts = username.split(' ');

    if (parts.isNotEmpty) {
      username = parts[0];

      if (username.length > 20) {
        username = username.substring(0, 20);
      }

      // Use your count logic here
      // int count = Read_From_MySQL_db.CountTotalWhereOne(tableName: "users", columnName: "username", columnVal: username);
      int count = 0;

      if (count > 0) {
        count++;
        username = '$username$count';
      }

      return username.toLowerCase();
    } else {
      // Handle the case where username is empty or contains only spaces
      return '';
    }
  }


  // Convert DateTime to words
  static String convertDateTimeToWords(String dateTimeString) {
    try {
      dateTimeString = dateTimeString.replaceFirst(" AM", "").replaceFirst(" PM", "");
      final dateTime = DateTime.parse(dateTimeString);
      final formattedDateTime = DateFormat('h:mm a \'on\' d MMMM yyyy').format(dateTime);
      return formattedDateTime;
    } catch (_) {
      return dateTimeString;
    }
  }
}
