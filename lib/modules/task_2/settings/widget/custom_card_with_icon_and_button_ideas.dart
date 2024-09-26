import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomCardWithIconAndButtonIdeas extends StatelessWidget {
  final String mainText;
  final IconData? cardPrefixIcon;
  final IconData? cardSuffixIcon;
  final void Function()? onTapSuffixIcon;
  const CustomCardWithIconAndButtonIdeas({
    super.key,
    required this.mainText,
    this.cardPrefixIcon,
    this.cardSuffixIcon,
    this.onTapSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            cardPrefixIcon,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          Expanded(
              child: Text(
            mainText,
            style: const TextStyle(
                color: Colors.white,
                fontSize: AppFontSize.extraSmallFontSize + 1,
                fontWeight: FontWeight.w600),
          )),
          GestureDetector(
            onTap: onTapSuffixIcon,
            child: Icon(cardSuffixIcon),
          )
        ],
      ),
    );
  }
}
