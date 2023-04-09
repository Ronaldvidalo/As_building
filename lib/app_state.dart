import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imagentemporal = '';
  String get imagentemporal => _imagentemporal;
  set imagentemporal(String _value) {
    _imagentemporal = _value;
  }

  bool _busquedacategoria = true;
  bool get busquedacategoria => _busquedacategoria;
  set busquedacategoria(bool _value) {
    _busquedacategoria = _value;
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _nombreusuario = '';
  String get nombreusuario => _nombreusuario;
  set nombreusuario(String _value) {
    _nombreusuario = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
