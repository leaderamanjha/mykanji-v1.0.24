import 'dart:convert';import 'package:shared_preferences/shared_preferences.dart';import 'package:mykanji/data/models/authServiceCategoryGetAll/get_auth_service_category_get_all_resp.dart';
// ignore_for_file: must_be_immutable
class PrefUtils {PrefUtils() { SharedPreferences.getInstance().then((value) {_sharedPreferences = value;}); }

static SharedPreferences? _sharedPreferences;

Future<void> init() async  { _sharedPreferences ??= await SharedPreferences.getInstance(); print('SharedPreference Initialized'); } 
///will clear all the data stored in preference
void clearPreferencesData() async  { _sharedPreferences!.clear(); } 
Future<void> setThemeData(String value) { return _sharedPreferences!.setString('themeData', value); } 
String getThemeData() { try {return _sharedPreferences!.getString('themeData')!;} catch (e) {return 'primary';} } 
Future<void> setEmailsucess(String value) { return _sharedPreferences!.setString('Emailsucess', value); } 
String getEmailsucess() { try {return _sharedPreferences!.getString('Emailsucess') ?? '';} catch (e) {return '';} } 
Future<void> setToken(String value) { return _sharedPreferences!.setString('token', value); } 
String getToken() { try {return _sharedPreferences!.getString('token') ?? '';} catch (e) {return '';} } 
Future<void> setServiceProviderListing(List<Data>? value) { return _sharedPreferences!.setString('ServiceProviderListing', jsonEncode(value)); } 
List<Data>? getServiceProviderListing() { try {var jsonData = jsonDecode(_sharedPreferences!.getString('ServiceProviderListing') ?? ''); return (jsonData as List).map((e) => Data.fromJson(e)).toList();} catch (e) {return null;} } 
 }
