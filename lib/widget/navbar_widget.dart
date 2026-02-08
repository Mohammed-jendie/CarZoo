import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedpage,
      builder: (context, value, child) {
        return NavigationBar(
          backgroundColor: const Color.fromARGB(48, 128, 176, 249),
          selectedIndex: value,
          onDestinationSelected: (value) {
            selectedpage.value = value;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      },
    );
  }
}
