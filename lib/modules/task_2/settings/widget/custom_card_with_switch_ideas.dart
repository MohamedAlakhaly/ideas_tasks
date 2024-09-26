import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomCardWithSwitchIdeas extends StatelessWidget {
  final bool isSwitch;
  final String mainText;
  final void Function(bool)? onChanged;
  const CustomCardWithSwitchIdeas({
    super.key,
    required this.isSwitch,
    required this.mainText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText,
            style: const TextStyle(
                color: Colors.white,
                fontSize: AppFontSize.extraSmallFontSize + 1,
                fontWeight: FontWeight.w600),
          ),
          Switch(
            value: isSwitch,
            onChanged: onChanged,
            activeTrackColor: Colors.white,
            thumbColor: WidgetStatePropertyAll(AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
