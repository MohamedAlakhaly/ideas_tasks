import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/modules/task_2/settings/widget/custom_card_with_icon_and_button_ideas.dart';
import 'package:ideas_tasks/modules/task_2/settings/widget/custom_card_with_switch_ideas.dart';

class SettingsViewIdeas extends StatelessWidget {
  const SettingsViewIdeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
        title: const Text('Settings'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Save',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            //! custom card for connect to facebook
            CustomCardWithSwitchIdeas(
              isSwitch: true,
              mainText: 'Connect to Facebook',
            ),
            //! custom card for beta
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Beta',
              cardPrefixIcon: Icons.r_mobiledata_rounded,
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card for notifications
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Notification',
              cardPrefixIcon: Iconsax.notification,
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card for Learning & sound setting
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Learning & sound setting',
              cardPrefixIcon: Iconsax.sound,
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card with switch for dark and light mode
            CustomCardWithSwitchIdeas(
              isSwitch: true,
              mainText: 'Dark Mode',
            ),
            //! custom card for help
            CustomCardWithIconAndButtonIdeas(
              mainText: 'help',
              cardPrefixIcon: Icons.help,
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card for log out app
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Log out',
              cardPrefixIcon: Iconsax.logout,
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card for Privacy Policy
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Privacy Policy',
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
            //! custom card for Terms of Use
            CustomCardWithIconAndButtonIdeas(
              mainText: 'Terms of Use',
              cardSuffixIcon: Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
