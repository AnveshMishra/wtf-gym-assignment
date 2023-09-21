import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/network/api_response.dart';
import '../../../../core/utils/loction_utils.dart';
import '../../../../model/location_model.dart';
import '../../../../model/gym_list_model.dart';
import '../repository/gym_list_repo.dart';

class GymListingViewModel extends ChangeNotifier {
  LocationModel? selectedLocation;
  Position? userPosition;
  ApiResponse<GymList> gymListResponse = ApiResponse.loading();

  GymListingViewModel() {
    _initializeView();
  }

  _initializeView() async {
    LocationModel model = await LocationUtils.getPlacemark();
    selectedLocation = model;
    userPosition = model.position;
    _fetchNearestGyms();
  }

  _fetchNearestGyms() {
    GymListRpo().getNearestGym({
      'page': 1,
      'limit': 30,
      'lat': userPosition?.latitude,
      'long': userPosition?.longitude
    }).then((value) {
      gymListResponse = value;
      notifyListeners();
    });
  }
}
