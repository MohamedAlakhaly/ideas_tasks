import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_images.dart';
import 'package:ideas_tasks/modules/task_3/comment/widget/custom_student_comment_widget.dart';
import 'package:ideas_tasks/modules/task_3/comment/widget/custom_teacher_comment_widget.dart';

class CommentIdeasView extends StatelessWidget {
  const CommentIdeasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('1 Replies'),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0).copyWith(
                                bottom: MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: Row(
                                children: [
                                  Expanded(child: TextFormField(minLines: 1,maxLines: 5,)),
                                  const SizedBox(width: 10),
                                  const Icon(Iconsax.send_1),
                                ],
                              ),
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text('Add reply'),
                  ),
                ],
              ),
              const CustomStudentCommentWidget(
                userAvatar: AppImages.currentAvatarImg,
                username: '@mouni',
                commentTime: '11 mins ago   .   Student',
                commentMessage:
                    'How to get better at line? I am really stuck in this step!',
                commentLikes: '39',
              ),
              const SizedBox(height: 20),
              const CustomTeacherCommentWidget(
                  userAvatar: AppImages.currentAvatarImg,
                  username: '@mouni',
                  commentTime: '11 mins ago',
                  commentMessage:
                      'The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as show in the video! Good luck ❤',
                  commentLikes: '20'),
            ],
          ),
        ),
      ),
    );
  }
}
