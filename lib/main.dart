import "package:flutter/material.dart";
import "package:flutter_application_2/pages/Settings_page.dart";
import "package:flutter_application_2/pages/login_page.dart";

import "package:flutter_application_2/pages/welcome_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),

      routes: {
        "settingspage": (context) => SettingsPage(),
        "log out": (context) => LoginPage(),
      },

      home: Scaffold(body: WelcomePage()),
    );
  }
}
