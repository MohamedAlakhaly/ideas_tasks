import 'package:flutter/material.dart';

class NavigationMenuTask4 extends StatelessWidget {
  const NavigationMenuTask4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
      ]),
    );
  }
}
