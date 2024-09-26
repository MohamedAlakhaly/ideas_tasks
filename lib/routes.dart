import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_routes.dart';
import 'package:ideas_tasks/modules/task_1/questions/view/questions_view.dart';
import 'package:ideas_tasks/modules/task_2/edit_profile/view/edit_profile_view_ideas.dart';
import 'package:ideas_tasks/modules/task_2/profile/settings/view/settings_view_ideas.dart';
import 'package:ideas_tasks/modules/task_2/profile/view/profile_view_ideas.dart';
import 'package:ideas_tasks/modules/task_3/comment/view/comment_ideas_view.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoutes.questionView, page: () => const QuestionsView()),
  GetPage(name: AppRoutes.editProfileViewIdeas, page: () => const EditProfileViewIdeas()),
  GetPage(name: AppRoutes.profileViewIdeas, page: () => const ProfileViewIdeas()),
  GetPage(name: AppRoutes.settingsView, page: () => const SettingsViewIdeas()),
  GetPage(name: AppRoutes.commentIdeasView, page: () => const CommentIdeasView()),
];
