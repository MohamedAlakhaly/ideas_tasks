import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomFloatingActionButtonEditProfile extends StatelessWidget {
  const CustomFloatingActionButtonEditProfile({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isDarkMode ? AppColors.darkBkColor : AppColors.lightBkColor,
      height: 80,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isDarkMode
                    ? Colors.white
                    : AppColors.primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: AppFontSize.smallFontSize,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text(
                'Save',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: AppFontSize.smallFontSize,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
