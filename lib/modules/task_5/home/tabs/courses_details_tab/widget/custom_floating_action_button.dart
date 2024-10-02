
import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Text('Unlock All Videos',style: TextStyle(fontSize: AppFontSize.smallFontSize,fontWeight: FontWeight.bold),),
    );
  }
}
