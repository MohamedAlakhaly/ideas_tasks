
import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomCategoryCard extends StatelessWidget {
  final String categoryName;
  final String categoryImg;
  const CustomCategoryCard({
    super.key,
    required this.categoryName,
    required this.categoryImg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      color: AppColors.primaryColor,
      child: Stack(
        children: [
          Container(
            color: AppColors.primaryColor,
            width: double.infinity,
            height: double.infinity,
          ),
          Image.asset(
            categoryImg,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black,
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: AppFontSize.extraSmallFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
