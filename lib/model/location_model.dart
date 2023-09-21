import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationModel {
  final String name, isoCountryCode;
  final Placemark? placemark;
  final Position? position;

  LocationModel({
    this.position,
    this.placemark,
    required this.name,
    required this.isoCountryCode,
  });
}
