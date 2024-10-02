import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';
import 'package:ideas_tasks/constant/app_images.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(AppImages.testImg)),
          ),
          Positioned(
            bottom: -20,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(color: Colors.white, blurRadius: 10)
                  ]),
              child: const Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}
