import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomFilterResultCard extends StatelessWidget {
  final String? image;
  final String name;
  final String username;
  final void Function()? onTap;
  const CustomFilterResultCard({
    super.key,
    this.image,
    required this.name,
    required this.username,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          // image
          CircleAvatar(backgroundColor: AppColors.primaryColor, radius: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: AppFontSize.extraSmallFontSize),
                ),
                Text(username),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(
              'Follow',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
