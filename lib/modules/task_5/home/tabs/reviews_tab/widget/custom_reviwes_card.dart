import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomReviewsCard extends StatelessWidget {
  final String comment;
  final String username;
  final String commentTime;
  const CustomReviewsCard(
      {super.key,
      required this.comment,
      required this.username,
      required this.commentTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            comment,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.extraSmallFontSize,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const CircleAvatar(backgroundColor: Colors.white),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    maxLines: 1,
                    style: const TextStyle(fontSize: AppFontSize.extraSmallFontSize),
                  ),
                  Text(
                    commentTime,
                    maxLines: 1,
                    style: const TextStyle(fontSize: AppFontSize.extraSmallFontSize),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
