import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/widget/custom_floating_action_button.dart';

class ReviewsTabView extends StatelessWidget {
  const ReviewsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomFloatingActionButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Here is what learners are saying',
                style: TextStyle(
                  fontSize: AppFontSize.largeFontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 30),
            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const CustomReviewsCard();
              },
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
              ),
              child: const Text('See all reviews'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomReviewsCard extends StatelessWidget {
  const CustomReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Best Course and beneficial',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.extraSmallFontSize,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.white),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rakibull hassan',
                    maxLines: 1,
                    style: TextStyle(fontSize: AppFontSize.extraSmallFontSize),
                  ),
                  Text(
                    '2 hours ago',
                    maxLines: 1,
                    style: TextStyle(fontSize: AppFontSize.extraSmallFontSize),
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
