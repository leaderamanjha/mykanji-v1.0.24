import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/input_form_screen/models/input_form_model.dart';import 'package:flutter/material.dart';/// A controller class for the InputFormScreen.
///
/// This class manages the state of the InputFormScreen, including the
/// current inputFormModelObj
class InputFormController extends GetxController {TextEditingController stitchingvalueController = TextEditingController();

TextEditingController labelvalueController = TextEditingController();

Rx<InputFormModel> inputFormModelObj = InputFormModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); stitchingvalueController.dispose(); labelvalueController.dispose(); } 
onSelected(dynamic value) { for (var element in inputFormModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} inputFormModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in inputFormModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} inputFormModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in inputFormModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} inputFormModelObj.value.dropdownItemList2.refresh(); } 
 }
