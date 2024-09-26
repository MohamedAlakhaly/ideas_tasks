import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_images.dart';
import 'package:ideas_tasks/constant/app_text_style.dart';
import 'package:ideas_tasks/core/functions/helper_functions.dart';
import 'package:ideas_tasks/modules/task_2/edit_profile/view/edit_profile_view_ideas.dart';
import 'package:ideas_tasks/modules/task_2/profile/widget/custom_card_upgrade_profile_ideas.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileViewIdeas extends StatelessWidget {
  const ProfileViewIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HelperFunctions.isDarkMode(context);
    TextStyle normalStyle = const TextStyle(
      color: Colors.white,
      fontSize: AppFontSize.extraSmallFontSize,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),

          //! profile image

          CircleAvatar(
            radius: 60,
            backgroundColor: AppColors.primaryColor,
            backgroundImage: const AssetImage(AppImages.profileImg),
          ),
          const SizedBox(height: 10),

          //! user first and last name

          Text('Rakibull hassan', style: AppTextStyle.titleStyle),
          const SizedBox(height: 10),

          //! percent of completed profile

          const Text('60% Complete your profile',
              style: TextStyle(fontSize: AppFontSize.smallFontSize - 1)),
          const SizedBox(height: 10),

          //! linear percent of completed profile

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: LinearPercentIndicator(
              percent: 0.6,
              animation: true,
              animateFromLastPercent: true,
              addAutomaticKeepAlive: true,
              progressColor: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 20),

          //! main section

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              color: isDarkMode
                  ? AppColors.darkBkColor
                  : AppColors.primaryColor.withOpacity(0.2),
              child: Column(
                children: [
                  const SizedBox(width: double.infinity),

                  //! custom card upgrade

                  CustomCardUpgradeProfileIdeas(
                    onTapUpgrade: () => log('upgrade'),
                  ),

                  const SizedBox(height: 20),

                  //! profile information

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: double.infinity),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Profile information',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppFontSize.mediumFontSize,
                                  fontWeight: FontWeight.w500),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const EditProfileViewIdeas());
                              },
                              child: const Icon(
                                Iconsax.edit,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 40),
                        Text('Email address', style: normalStyle),
                        const SizedBox(height: 10),
                        Text('Password', style: normalStyle),
                        const SizedBox(height: 10),
                        Text('First name', style: normalStyle),
                        const SizedBox(height: 10),
                        Text('Last name', style: normalStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
