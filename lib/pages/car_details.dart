import 'package:flutter/material.dart';
import 'package:flutter_application_2/config/colors.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key, required this.carimage});
  // ignore: prefer_typing_uninitialized_variables
  final carimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: base,
      appBar: AppBar(title: Text('Car Details'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 25),
          Center(child: Image.asset(carimage.image, scale: 4)),
        ],
      ),
    );
  }
}
