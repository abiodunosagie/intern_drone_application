import 'package:flutter/material.dart';

import '../utilities/drone_model.dart';
import 'drone_card.dart';

List dronespecs = [
  DroneModel(
      image: 'images/6.png',
      colour: Colors.blue.shade100,
      tag: 'Rolio4k',
      manufacturer: 'Abiodun Osagie',
      weight: '3.2kg',
      serviced: 'Yes',
      price: '#740,000'),
  DroneModel(
    image: 'images/2.png',
    colour: Colors.red.shade100,
    tag: 'PandaSee3i',
    manufacturer: 'Abiodun',
    weight: '2kg',
    serviced: 'Yes',
    price: '#340.000',
  ),
  DroneModel(
    image: 'images/5.png',
    colour: Colors.green.shade100,
    tag: 'Reaper',
    manufacturer: 'kor',
    weight: '4.2kg',
    notserviced: 'Yes',
    price: '#500,000',
  ),
  DroneModel(
    image: 'images/12.png',
    colour: Colors.blueGrey.shade100,
    tag: 'Shadow',
    manufacturer: 'Tammy',
    weight: '4.2kg',
    notserviced: 'Yes',
    price: '#980,000',
  ),
  DroneModel(
    image: 'images/8.png',
    colour: Colors.brown.shade100,
    tag: 'Global Hawk',
    manufacturer: 'Smith',
    weight: '2.2kg',
    notserviced: 'Yes',
    price: '#450,000',
  ),
  DroneModel(
    image: 'images/10.png',
    colour: Colors.indigo.shade100,
    tag: 'Grey Eagle',
    manufacturer: 'lorel Inc.',
    weight: '2.2kg',
    notserviced: 'No',
    price: '760,000',
  )
];

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              //App bar section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Smith!',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue.shade900),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '25, August 2022',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.blue.shade900,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //Search bar Section
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(
                            color: Colors.blue.shade900.withOpacity(0.6),
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.search,
                        color: Colors.blue.shade900.withOpacity(0.6),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                    itemCount: dronespecs.length,
                    itemBuilder: (context, index) {
                      return DroneCard(
                        droneModel: dronespecs[index],
                      );
                    }),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
