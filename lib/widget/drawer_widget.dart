import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/colors.dart';

class DarwerWidget extends StatelessWidget {
  const DarwerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      elevation: 10,
      shadowColor: Colors.pinkAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: cardcolor),
            padding: EdgeInsets.zero,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
