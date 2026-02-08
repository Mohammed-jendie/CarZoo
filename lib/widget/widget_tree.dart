import "package:flutter/material.dart";

import "package:flutter_application_2/data/notifiers.dart";

import "package:flutter_application_2/pages/home_page.dart";
import "package:flutter_application_2/pages/profile_page.dart";

import "package:flutter_application_2/widget/drawer_widget.dart";
import "package:flutter_application_2/widget/navbar_widget.dart";

// ignore: must_be_immutable
class WidgetTree extends StatelessWidget {
  WidgetTree({super.key});
  List<Widget> pages = [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    child: Text('Settings'),
                    onTap: () {
                      Navigator.pushNamed(context, 'settingspage');
                    },
                  ),
                  PopupMenuItem(
                    child: Text('Log out'),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, 'log out');
                    },
                  ),
                ],
          ),
        ],
        title: Text("CarZoo"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(76, 128, 176, 249),
      ),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedpage,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      drawer: DarwerWidget(),
    );
  }
}
