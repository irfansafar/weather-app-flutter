import 'package:clima/services/networking.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;

  Future<void> currentLoc() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
