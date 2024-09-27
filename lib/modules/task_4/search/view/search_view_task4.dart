import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_text_style.dart';
import 'package:ideas_tasks/model/data/home_view_4_data.dart';
import 'package:ideas_tasks/modules/task_4/search/controller/search_controller.dart';
import 'package:ideas_tasks/modules/task_4/search/widget/custom_category_card.dart';
import 'package:ideas_tasks/modules/task_4/search_result/view/search_result_view.dart';

class SearchViewTask4 extends StatelessWidget {
  const SearchViewTask4({super.key});

  @override
  Widget build(BuildContext context) {
    SearchControllerImp controller = Get.put(SearchControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              TextFormField(
                controller: controller.searchController,
                onChanged: (val) {
                  controller.update();
                },
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Graphic illustration',
                  suffixIcon: const Icon(Iconsax.search_normal),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              GetBuilder<SearchControllerImp>(builder: (myController) {
                return controller.searchController.text.isEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            'Top search',
                            style: AppTextStyle.titleStyle,
                          ),
                          const SizedBox(height: 10),
                          GroupButton(
                            buttons: const [
                              'photography',
                              'craft',
                              'art',
                              'procreate',
                              'marketing',
                              'UX design'
                            ],
                            options: GroupButtonOptions(
                              mainGroupAlignment: MainGroupAlignment.start,
                              borderRadius: BorderRadius.circular(50),
                              selectedColor: AppColors.primaryColor,
                              unselectedColor: AppColors.primaryColor,
                              selectedTextStyle:
                                  const TextStyle(color: Colors.white),
                              unselectedTextStyle:
                                  const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Category',
                            style: AppTextStyle.titleStyle,
                          ),
                          GridView.builder(
                            itemCount: category.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 170,
                            ),
                            itemBuilder: (context, index) {
                              return CustomCategoryCard(
                                categoryImg: category[index].categoryImg!,
                                categoryName: category[index].categoryName!,
                              );
                            },
                          )
                        ],
                      )
                    : const SearchResultView();
              })
            ],
          ),
        ),
      ),
    );
  }
}
