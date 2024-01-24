import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/final_restore_screen/models/final_restore_model.dart';import 'package:flutter/material.dart';/// A controller class for the FinalRestoreScreen.
///
/// This class manages the state of the FinalRestoreScreen, including the
/// current finalRestoreModelObj
class FinalRestoreController extends GetxController {TextEditingController textFieldController = TextEditingController();

TextEditingController iconController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

TextEditingController priceController = TextEditingController();

Rx<FinalRestoreModel> finalRestoreModelObj = FinalRestoreModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); textFieldController.dispose(); iconController.dispose(); descriptionController.dispose(); priceController.dispose(); } 
onSelected(dynamic value) { for (var element in finalRestoreModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} finalRestoreModelObj.value.dropdownItemList.refresh(); } 
 }
