import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    List cardTitle = ['Number', 'google', 'facebook', 'snapshat', 'tik tok'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff543ee9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(10),
                child: ListView.separated(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CustomCard(cardTitle: cardTitle[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String cardTitle;
  final void Function()? onTap;
  final String? cardImage;
  const CustomCard({
    super.key,
    required this.cardTitle,
    this.onTap,
    this.cardImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xff543ee9),
            radius: 25,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(cardTitle),
          ),
          const Text('bind'),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
