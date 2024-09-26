
import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomCardUpgradeProfileIdeas extends StatelessWidget {
  final void Function()? onTapUpgrade;
  const CustomCardUpgradeProfileIdeas({
    super.key,
    this.onTapUpgrade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Billed every year',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: AppFontSize.smallFontSize,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '12 month at \$8.00/month',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: AppFontSize.extraSmallFontSize - 1,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          GestureDetector(
            onTap: onTapUpgrade,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: const Text(
                'upgrade',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}