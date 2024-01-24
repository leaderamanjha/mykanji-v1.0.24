import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/profile_details_save_screen/models/profile_details_save_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileDetailsSaveScreen.
///
/// This class manages the state of the ProfileDetailsSaveScreen, including the
/// current profileDetailsSaveModelObj
class ProfileDetailsSaveController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

TextEditingController mobileNumberController1 = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController pincodeController = TextEditingController();

TextEditingController addressController1 = TextEditingController();

TextEditingController cityController1 = TextEditingController();

TextEditingController pincodeController1 = TextEditingController();

Rx<ProfileDetailsSaveModel> profileDetailsSaveModelObj = ProfileDetailsSaveModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); mobileNumberController.dispose(); mobileNumberController1.dispose(); emailController.dispose(); addressController.dispose(); cityController.dispose(); pincodeController.dispose(); addressController1.dispose(); cityController1.dispose(); pincodeController1.dispose(); } 
 }
