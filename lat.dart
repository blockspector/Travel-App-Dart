import 'dart:math';
import 'package:location/location.dart';
import 'package:flutter/services.dart';

class MapHelper {
  static double calculateDistance(
      double lat1, double lon1, double lat2, double lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }
}

void main() {
  int postcode1 = 90210;
  int postcode2 = 10002;
  // Add code to retrieve latitudes and longitudes from the postcodes using an API or database

  double lat1 = 51.49332739674616;
  double lon1 = -0.20565183730235814;
  double lat2 = -8.506736699890014;
  double lon2 = 115.26219042157554;

  // Plot the two postcodes on a map
  // Add code here to display the map

  // Calculate the distance between the two postcodes
  double distance = MapHelper.calculateDistance(lat1, lon1, lat2, lon2);
  print(
      "Distance between postcodes $postcode1 and $postcode2 is ${(distance).toStringAsFixed(2)} km");
}
