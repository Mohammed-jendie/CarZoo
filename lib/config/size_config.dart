
import 'package:flutter/material.dart';

class SizeConfig extends StatelessWidget {
  const SizeConfig({super.key});

  @override
  Widget build(BuildContext context) {
    // Get MediaQueryData
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    // Now you can access its properties
    final double screenWidth = mediaQueryData.size.width;
    final double screenHeight = mediaQueryData.size.height;
    final Orientation orientation = mediaQueryData.orientation;

    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Screen Width: $screenWidth'),
            Text('Screen Height: $screenHeight'),
            Text('Orientation: $orientation'),
          ],
        ),
      ),
    );
  }
}
