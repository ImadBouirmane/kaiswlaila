import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userLocation = _latLngFromString(prefs.getString('ff_userLocation'));
  }

  SharedPreferences prefs;

  LatLng _userLocation;
  LatLng get userLocation => _userLocation;
  set userLocation(LatLng _value) {
    _userLocation = _value;
    prefs.setString('ff_userLocation', _value.serialize());
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
