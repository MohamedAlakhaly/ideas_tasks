import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/model/data/filter_result_data.dart';
import 'package:ideas_tasks/modules/task_4/filter_result/widget/custom_filter_result_card.dart';

class FilterResultView extends StatelessWidget {
  const FilterResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Top teacher this month',
                style: TextStyle(
                  fontSize: AppFontSize.mediumFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  itemCount: filterResult.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomFilterResultCard(
                      name: filterResult[index].name!,
                      username: filterResult[index].username!,
                      onTap: () {},
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
