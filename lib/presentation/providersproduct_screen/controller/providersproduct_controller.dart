import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/providersproduct_screen/models/providersproduct_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProvidersproductScreen.
///
/// This class manages the state of the ProvidersproductScreen, including the
/// current providersproductModelObj
class ProvidersproductController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ProvidersproductModel> providersproductModelObj = ProvidersproductModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
