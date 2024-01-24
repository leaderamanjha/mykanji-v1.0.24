import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/providerreport_screen/models/providerreport_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProviderreportScreen.
///
/// This class manages the state of the ProviderreportScreen, including the
/// current providerreportModelObj
class ProviderreportController extends GetxController {TextEditingController editTextController = TextEditingController();

Rx<ProviderreportModel> providerreportModelObj = ProviderreportModel().obs;

@override void onClose() { super.onClose(); editTextController.dispose(); } 
 }
