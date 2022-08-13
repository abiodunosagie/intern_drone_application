import 'dart:ui';

class DroneModel {
  final String image;
  final String tag;
  final String manufacturer;
  final Color colour;
  final String weight;
  final String? serviced;
  final String? notserviced;
  final String price;

  DroneModel(
      {required this.price,
      required this.weight,
      this.serviced,
      this.notserviced,
      required this.colour,
      required this.image,
      required this.tag,
      required this.manufacturer});
}
