import 'package:flutter/material.dart';

import '../utilities/drone_model.dart';

class DroneCard extends StatelessWidget {
  final DroneModel droneModel;

  const DroneCard({super.key, required this.droneModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: droneModel.colour,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                //images of drone
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(droneModel.image),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text Heading
                    Text(
                      droneModel.tag,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.9)),
                    ),
                    const SizedBox(height: 10),
                    //drone Id
                    Text(
                      droneModel.manufacturer,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.9)),
                    ),
                    const SizedBox(height: 10),
                    //Weight Capacity
                    Text(
                      droneModel.weight,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 5),
                    //Manufacturer

                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          droneModel.price,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black38),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Buy',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
