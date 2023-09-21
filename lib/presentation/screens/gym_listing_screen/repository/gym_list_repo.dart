import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_end_points.dart';
import '../../../../core/network/api_response.dart';
import '../../../../model/gym_list_model.dart';

class GymListRpo {
  static final GymListRpo _singleton = GymListRpo._internal();
  factory GymListRpo() {
    return _singleton;
  }
  GymListRpo._internal();

  final ApiClient _client = ApiClient();

  Future<ApiResponse<GymList>> getNearestGym(Map<String, dynamic> data) async {
    try {
      final response = await _client.get(nearestGym, queryParameters: data);
      ApiResponse<GymList> apiResponse =
          ApiResponse.success(GymList.fromJson(response.data));
      return apiResponse;
    } on Exception catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
