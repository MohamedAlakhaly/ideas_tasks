import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_images.dart';
import 'package:ideas_tasks/constant/app_text_style.dart';
import 'package:ideas_tasks/core/functions/helper_functions.dart';
import 'package:ideas_tasks/modules/task_2/edit_profile/widget/custom_floating_action_button_edit_profile.dart';
import 'package:ideas_tasks/modules/task_2/edit_profile/widget/custom_text_form_field_ideas.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class EditProfileViewIdeas extends StatelessWidget {
  const EditProfileViewIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          CustomFloatingActionButtonEditProfile(isDarkMode: isDarkMode),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),

            //! profile image

            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.primaryColor,
                  backgroundImage: const AssetImage(AppImages.profileImg),
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.green.withOpacity(0.3),
                  child: const Icon(
                    Icons.file_upload_outlined,
                    size: 32,
                    color: Colors.white,
                  ),
                )
              ],
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

            Container(
              padding: const EdgeInsets.all(15),
              color: isDarkMode
                  ? AppColors.darkBkColor
                  : AppColors.primaryColor.withOpacity(0.2),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: double.infinity),
                  Text(
                    'Profile information',
                    style: TextStyle(
                        fontSize: AppFontSize.mediumFontSize,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email address',
                    style: TextStyle(fontSize: AppFontSize.smallFontSize - 2),
                  ),
                  SizedBox(height: 15),
                  //! text form field for add Email address
                  CustomTextFormFieldIdeas(
                    hintText: 'Enter your email',
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: AppFontSize.smallFontSize - 2),
                  ),
                  SizedBox(height: 15),
                  //! text form field for add password
                  CustomTextFormFieldIdeas(
                    hintText: 'Enter your password',
                  ),
                  SizedBox(height: 15),
                  Text(
                    'First name',
                    style: TextStyle(fontSize: AppFontSize.smallFontSize - 2),
                  ),
                  SizedBox(height: 15),
                  //! text form field for add first name
                  CustomTextFormFieldIdeas(
                    hintText: 'Enter your first name',
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Last name',
                    style: TextStyle(fontSize: AppFontSize.smallFontSize - 2),
                  ),
                  SizedBox(height: 15),
                  //! text form field for add last name
                  CustomTextFormFieldIdeas(
                    hintText: 'Enter your last name',
                  ),
                  SizedBox(height: 90),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
