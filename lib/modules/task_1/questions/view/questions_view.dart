import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_images.dart';
import 'package:ideas_tasks/constant/app_text_style.dart';
import 'package:ideas_tasks/core/functions/helper_functions.dart';
import 'package:ideas_tasks/modules/task_1/questions/controller/questions_controller.getx.dart';
import 'package:flutter_animate/flutter_animate.dart';
class QuestionsView extends StatelessWidget {
  const QuestionsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HelperFunctions.isDarkMode(context);
    QuestionsControllerImp controller = Get.put(QuestionsControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: double.infinity),
            Text(
              'How was your session?',
              style: AppTextStyle.titleStyle,
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 700))
                .slide(duration: const Duration(milliseconds: 700)),
            Text(
              'Love it! What was your favorite part?',
              style: AppTextStyle.contentStyle,
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 800))
                .slide(duration: const Duration(milliseconds: 800)),
            const SizedBox(height: 130),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(AppImages.emojiImg)
                  .animate()
                  .fadeIn(duration: const Duration(milliseconds: 900))
                  .slide(duration: const Duration(milliseconds: 900)),
            ),
            const SizedBox(height: 130),
            GetBuilder<QuestionsControllerImp>(builder: (myController) {
              return Slider(
                value: controller.currentSlider,
                onChanged: (val) {
                  controller.currentSlider = val;
                  controller.update();
                },
                max: 100,
                activeColor: AppColors.primaryColor,
                inactiveColor: isDarkMode
                    ? Colors.white
                    : AppColors.primaryColor.withOpacity(0.2),
              );
            }).animate().fadeIn(duration: const Duration(milliseconds: 900)),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: controller.goToHomeView,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    'continue',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFontSize.smallFontSize,
                        color: Colors.white),
                  ),
                ),
              ),
            ).animate()
                  .fadeIn(duration: const Duration(milliseconds: 1000))
                  ,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
