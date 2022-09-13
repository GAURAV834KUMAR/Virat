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
    _cartitems = prefs.getInt('ff_cartitems') ?? _cartitems;
    _phoneno = prefs.getInt('ff_phoneno') ?? _phoneno;
  }

  SharedPreferences prefs;

  int _cartitems = 0;
  int get cartitems => _cartitems;
  set cartitems(int _value) {
    _cartitems = _value;
    prefs.setInt('ff_cartitems', _value);
  }

  int _phoneno = 0;
  int get phoneno => _phoneno;
  set phoneno(int _value) {
    _phoneno = _value;
    prefs.setInt('ff_phoneno', _value);
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
