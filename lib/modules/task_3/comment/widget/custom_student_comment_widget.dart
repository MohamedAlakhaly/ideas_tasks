import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomStudentCommentWidget extends StatelessWidget {
  final String userAvatar;
  final String username;
  final String commentTime;
  final String commentMessage;
  final String commentLikes;
  final void Function()? onTapLike;
  final void Function()? onTapReplay;

  const CustomStudentCommentWidget({
    super.key, required this.userAvatar, required this.username, required this.commentTime, required this.commentMessage, required this.commentLikes, this.onTapLike, this.onTapReplay,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(userAvatar),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.extraSmallFontSize,
                ),
              ),
              Text(
                commentTime,
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: AppFontSize.extraSmallFontSize),
              ),
               Text(
                commentMessage,
                style: const TextStyle(fontSize: AppFontSize.extraSmallFontSize),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: onTapLike,
                    child: Text(
                      'Like',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: AppFontSize.extraSmallFontSize),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: onTapReplay,
                      child: const Text(
                        'Reply',
                        style:
                            TextStyle(fontSize: AppFontSize.extraSmallFontSize),
                      ),
                    ),
                  ),
                  Icon(Iconsax.like_1, color: AppColors.primaryColor),
                  const SizedBox(width: 10),
                  Text(
                    commentLikes,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: AppFontSize.extraSmallFontSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
