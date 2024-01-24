import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/lower_body_page/models/lower_body_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LowerBodyPage.
///
/// This class manages the state of the LowerBodyPage, including the
/// current lowerBodyModelObj
class LowerBodyController extends GetxController {
  LowerBodyController(this.lowerBodyModelObj);

  TextEditingController hipHeightvalueController = TextEditingController();

  TextEditingController calfvalueController = TextEditingController();

  TextEditingController thighvalueController = TextEditingController();

  TextEditingController inseamvalueController = TextEditingController();

  TextEditingController outseamvalueController = TextEditingController();

  Rx<LowerBodyModel> lowerBodyModelObj;

  @override
  void onClose() {
    super.onClose();
    hipHeightvalueController.dispose();
    calfvalueController.dispose();
    thighvalueController.dispose();
    inseamvalueController.dispose();
    outseamvalueController.dispose();
  }
}
