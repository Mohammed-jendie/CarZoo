import "package:flutter/material.dart";
import "package:flutter_application_2/config/colors.dart";
import "package:flutter_application_2/model/car.dart";
import "package:flutter_application_2/pages/car_details.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: base,
      body: ListView.builder(
        shrinkWrap: true, //
        itemCount: carList.length,

        itemBuilder: (context, index) {
          final car = carList[index];     //  !     NEW INFO     !  //
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CarDetails(carimage: car);
                  },
                ),
              );
            },

            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 24, left: 24, top: 40),
                  padding: const EdgeInsets.only(
                    left: 25,
                    bottom: 15,
                    top: 12,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: cardcolor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$ ${car.price.toString()}",
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '   Price',
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            car.brand,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            car.model,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            car.co2,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            car.fuelcons,
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Brand', style: TextStyle(color: white)),

                          Text('Model    ', style: TextStyle(color: white)),

                          Text('co2', style: TextStyle(color: white)),

                          Text('    fuel cons', style: TextStyle(color: white)),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 17,
                  right: 24,
                  child: Image.asset(car.image, scale: 6),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
