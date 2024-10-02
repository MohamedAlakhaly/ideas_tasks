import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/widget/custom_floating_action_button.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/reviews_tab/widget/custom_reviwes_card.dart';

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
                return const CustomReviewsCard(
                  comment: 'Best Course and beneficial',
                  commentTime: '2 hours ago',
                  username: 'Rakibull hassan',
                );
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

