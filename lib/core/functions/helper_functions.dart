import 'package:flutter/material.dart';

class HelperFunctions {
  //! check is dark mode 

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
  
}
