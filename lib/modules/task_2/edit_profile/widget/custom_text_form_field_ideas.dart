import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/core/functions/helper_functions.dart';

class CustomTextFormFieldIdeas extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const CustomTextFormFieldIdeas({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HelperFunctions.isDarkMode(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: isDarkMode ? AppColors.darkBkColor : Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.white)),
        hintText: hintText,
      ),
    );
  }
}