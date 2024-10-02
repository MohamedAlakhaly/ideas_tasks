import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/widget/custom_card_user_details.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/widget/custom_floating_action_button.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/widget/custom_video_card.dart';

class CoursesDetailsTab extends StatelessWidget {
  const CoursesDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle styleOne = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: AppFontSize.extraSmallFontSize,
    );
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomFloatingActionButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Marketing',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppFontSize.smallFontSize,
              ),
            ),
            const Text(
              'Marketing refers to any actions a company takes to attract an audience to the Read more',
              style: TextStyle(
                fontSize: AppFontSize.extraSmallFontSize,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 20,
              child: Row(
                children: [
                  Text('10 Chapters', style: styleOne),
                  const SizedBox(width: 10),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text('FUll 5 hours', style: styleOne)
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomCardUserDetails(styleOne: styleOne),
            const SizedBox(height: 30),
            const CustomVideoCard(),
            const SizedBox(height: 40),
            Text(
                'You can buy the full course. You have been subscribed to this app for 1 year',
                style: styleOne),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: const Text('Upgrade'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



