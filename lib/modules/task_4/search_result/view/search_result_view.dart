import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/model/data/search_result_data.dart';
import 'package:ideas_tasks/modules/task_4/filter/view/filter_view.dart';
import 'package:ideas_tasks/modules/task_4/search_result/widget/custom_result_card.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'your search results',
                  style: TextStyle(fontSize: AppFontSize.extraSmallFontSize),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(()=>const FilterView());
                  },
                  child: const Icon(Icons.filter_list)),
            ],
          ),
          ListView.separated(
            itemCount: searchResult.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomResultCard(
                courseName: searchResult[index].courseName,
                creatorName: searchResult[index].creatorName,
                student: searchResult[index].student,
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
          )
        ],
      ),
    );
  }
}
