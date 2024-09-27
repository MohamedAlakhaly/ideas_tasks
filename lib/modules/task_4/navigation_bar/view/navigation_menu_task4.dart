import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/core/functions/helper_functions.dart';
import 'package:ideas_tasks/modules/task_4/navigation_bar/controller/navigation_controller.getx.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NavigationMenuTask4 extends StatelessWidget {
  const NavigationMenuTask4({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDartTheme = HelperFunctions.isDarkMode(context);
    NavigationMenuTask4ControllerImp controller =
        Get.put(NavigationMenuTask4ControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        color: isDartTheme ? AppColors.darkBkColor : AppColors.lightBkColor,
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GetBuilder<NavigationMenuTask4ControllerImp>(
            builder: (myController) {
              return SalomonBottomBar(
                backgroundColor: AppColors.primaryColor,
                currentIndex: controller.currentIndex,
                onTap: (val) {
                  controller.currentIndex = val;
                  controller.update();
                },
                items: [
                  /// Home
                  SalomonBottomBarItem(
                      icon: const Icon(Iconsax.home),
                      title: const Text("Home"),
                      selectedColor: Colors.white,
                      unselectedColor: Colors.white),

                  /// Likes
                  SalomonBottomBarItem(
                    icon: const Icon(Iconsax.search_normal),
                    title: const Text("Search"),
                    selectedColor: Colors.white,
                    unselectedColor: Colors.white,
                  ),

                  SalomonBottomBarItem(
                    icon: const Icon(Iconsax.save_24),
                    title: const Text("Save"),
                    selectedColor: Colors.white,
                    unselectedColor: Colors.white,
                  ),

                  /// Profile
                  SalomonBottomBarItem(
                      icon: const Icon(Icons.person_2_outlined),
                      title: const Text("Profile"),
                      selectedColor: Colors.white,
                      unselectedColor: Colors.white),
                ],
              );
            },
          ),
        ),
      ),
      body:
          GetBuilder<NavigationMenuTask4ControllerImp>(builder: (myController) {
        return controller.screens[controller.currentIndex];
      }),
    );
  }
}
