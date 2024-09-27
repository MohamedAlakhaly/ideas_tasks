import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_4/filter_result/view/filter_result_view.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sort by',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.smallFontSize,
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                  value: true,
                  onChanged: (val) {},
                  title: const Text('Free classes')),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('Premium classes')),
              CheckboxListTile(
                  value: false, onChanged: (val) {}, title: const Text('All')),
              const SizedBox(height: 20),
              const Text(
                'Level',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.smallFontSize,
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('Beginner')),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('Intermidiate')),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('Advacne')),
              const SizedBox(height: 20),
              const Text(
                'Duration',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.smallFontSize,
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('0-1 Hour')),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('1-3 Hour')),
              CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  title: const Text('3 + hour')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(()=>const FilterResultView());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor),
                    child: const Text(
                      'Apply',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
