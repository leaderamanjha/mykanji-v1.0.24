import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/login_and_security_screen/models/login_and_security_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginAndSecurityScreen.
///
/// This class manages the state of the LoginAndSecurityScreen, including the
/// current loginAndSecurityModelObj
class LoginAndSecurityController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController iFSCCodevalueController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController iFSCCodevalueController1 = TextEditingController();

TextEditingController iFSCCodevalueController2 = TextEditingController();

Rx<LoginAndSecurityModel> loginAndSecurityModelObj = LoginAndSecurityModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); iFSCCodevalueController.dispose(); cityController.dispose(); iFSCCodevalueController1.dispose(); iFSCCodevalueController2.dispose(); } 
 }
