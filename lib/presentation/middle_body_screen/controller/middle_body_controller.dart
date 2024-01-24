import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/middle_body_screen/models/middle_body_model.dart';import 'package:flutter/material.dart';/// A controller class for the MiddleBodyScreen.
///
/// This class manages the state of the MiddleBodyScreen, including the
/// current middleBodyModelObj
class MiddleBodyController extends GetxController {TextEditingController armLengthController = TextEditingController();

TextEditingController wristController = TextEditingController();

TextEditingController shoulderToWaistFrontController = TextEditingController();

TextEditingController shoulderToWaistBackController = TextEditingController();

TextEditingController bustController = TextEditingController();

TextEditingController bustSeparationController = TextEditingController();

TextEditingController underBustController = TextEditingController();

TextEditingController bustHeightController = TextEditingController();

TextEditingController backWidthController = TextEditingController();

Rx<MiddleBodyModel> middleBodyModelObj = MiddleBodyModel().obs;

@override void onClose() { super.onClose(); armLengthController.dispose(); wristController.dispose(); shoulderToWaistFrontController.dispose(); shoulderToWaistBackController.dispose(); bustController.dispose(); bustSeparationController.dispose(); underBustController.dispose(); bustHeightController.dispose(); backWidthController.dispose(); } 
 }
