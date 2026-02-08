import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/sign_up_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    // Now you can access its properties
    final double screenWidth = mediaQueryData.size.width;
    final double screenHeight = mediaQueryData.size.height;

      
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/1.jpg',
             
            ),

            Column(
              children: [
                Container(height: screenHeight / 4.5),
                Text(
                  'Welcome To Carzoo',

                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                Container(height: screenHeight / 26),
                ClipOval(
                  child: Lottie.asset(
                    'assets/lotties/welcome.json',
                    fit: BoxFit.fill,
                    width: screenWidth / 1.8,
                    height: screenHeight / 3.9,
                  ),
                ),
                Container(height: screenHeight / 17.33333),

                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    minimumSize: Size(300, 40),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
                  },

                  child: Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
