import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/restore_report_screen/models/restore_report_model.dart';import 'package:flutter/material.dart';/// A controller class for the RestoreReportScreen.
///
/// This class manages the state of the RestoreReportScreen, including the
/// current restoreReportModelObj
class RestoreReportController extends GetxController {TextEditingController editTextController = TextEditingController();

Rx<RestoreReportModel> restoreReportModelObj = RestoreReportModel().obs;

@override void onClose() { super.onClose(); editTextController.dispose(); } 
 }
