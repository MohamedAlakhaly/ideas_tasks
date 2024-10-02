import 'package:flutter/material.dart';

class CustomCardUserDetails extends StatelessWidget {
  const CustomCardUserDetails({
    super.key,
    required this.styleOne,
  });

  final TextStyle styleOne;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 25, backgroundColor: Colors.white),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rakibull hassan', style: styleOne),
            SizedBox(
              height: 20,
              child: Row(
                children: [
                  Text(
                    'Instructor',
                    style: styleOne,
                  ),
                  const SizedBox(width: 10),
                  const VerticalDivider(color: Colors.white),
                  const SizedBox(width: 10),
                  Text('4.5 (120 Reviews)', style: styleOne)
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}