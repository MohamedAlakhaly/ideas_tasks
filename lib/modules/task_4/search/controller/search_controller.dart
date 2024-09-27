import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/modules/task_4/search/view/search_view_task4.dart';
import 'package:ideas_tasks/modules/task_4/search_result/view/search_result_view.dart';

abstract class SearchController extends GetxController {}

class SearchControllerImp extends SearchController {
  late TextEditingController searchController;
  searchResult() {
    searchController.text.isEmpty
        ? Get.to(() => const SearchResultView())
        : Get.to(const SearchViewTask4());
  }

  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
