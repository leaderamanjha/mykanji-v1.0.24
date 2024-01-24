import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/upper_body_page/models/upper_body_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UpperBodyPage.
///
/// This class manages the state of the UpperBodyPage, including the
/// current upperBodyModelObj
class UpperBodyController extends GetxController {
  UpperBodyController(this.upperBodyModelObj);

  TextEditingController neckvalueController = TextEditingController();

  TextEditingController shouldervalueController = TextEditingController();

  TextEditingController armLengthvalueController = TextEditingController();

  TextEditingController bicepvalueController = TextEditingController();

  Rx<UpperBodyModel> upperBodyModelObj;

  @override
  void onClose() {
    super.onClose();
    neckvalueController.dispose();
    shouldervalueController.dispose();
    armLengthvalueController.dispose();
    bicepvalueController.dispose();
  }
}
