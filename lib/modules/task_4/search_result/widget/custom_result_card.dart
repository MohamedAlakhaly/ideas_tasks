import 'package:flutter/material.dart';
import 'package:ideas_tasks/constant/app_colors.dart';

class CustomResultCard extends StatelessWidget {
  final String courseName;
  final String creatorName;
  final String student;
  const CustomResultCard({
    super.key,
    required this.courseName,
    required this.creatorName,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              // image
              // child: Image.asset(),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    courseName,
                    style: const TextStyle(fontSize: AppFontSize.smallFontSize),
                  ),
                  Text(creatorName),
                  Row(
                    children: [
                      const Icon(Icons.person),
                      Text(student),
                      const SizedBox(width: 10),
                      const Icon(Icons.star),
                      const SizedBox(width: 5),
                      const Text('4.7'),
                    ],
                  )
                ]),
          )
        ],
      ),
    );
  }
}
