import 'package:week_3_blabla_project/model/ride/ride_pref.dart';
import 'package:week_3_blabla_project/repository/mock/mock_ride_preferences_repository.dart';

class RidePrefProvider {
  MockRidePreferencesRepository RidePreferencesRepository =
      MockRidePreferencesRepository();
  RidePreference? _currentPreference;
  RidePreference? get currentPreference => _currentPreference;
  List<RidePreference> pastPreference = [];

  void setCurrentPreference(RidePreference ridePreference) {
    if (_currentPreference == null) {
      pastPreference.add(ridePreference);
      _currentPreference = ridePreference;
    } else {
      pastPreference.add(ridePreference);
      _currentPreference = ridePreference;
    }
  }

  RidePreference preferencesHistory() => pastPreference.last;
}
