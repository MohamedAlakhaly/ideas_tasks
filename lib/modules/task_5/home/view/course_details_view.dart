import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/courses_details_tab/view/courses_details_tab.dart';
import 'package:ideas_tasks/modules/task_5/home/tabs/reviews_tab/view/reviews_tab_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: ColoredBox(
              color: AppColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabAlignment: TabAlignment.center,
                  isScrollable: true,
                  labelStyle: const TextStyle(
                      fontSize: AppFontSize.smallFontSize - 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.darkBkColor,
                  ),
                  tabs: const [
                    Tab(child: Text('Course Details')),
                    Tab(child: Text('lessons content (50)')),
                    Tab(child: Text('120 reviews')),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const CoursesDetailsTab(),
            Container(),
            const ReviewsTabView(),
          ],
        ),
      ),
    );
  }
}
