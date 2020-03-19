import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


abstract class StringValidator{
  bool isValid(String inputString);
}

class RegexValidator implements StringValidator{
  final String regexSource;
  RegexValidator({ this.regexSource});

  @override
  bool isValid(String inputString) {
    try {
      final regex = RegExp(regexSource);
      final matches = regex.allMatches(inputString);

      for (Match match in matches) {
        if (match.start == 0 && match.end == inputString.length) {
          return true;
        }
      }
      return false;
    } catch (e) {
      assert(false, e.toString());
      return true;
    }
  }
}
