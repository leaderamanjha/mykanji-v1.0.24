import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/stain_removel_screen/models/stain_removel_model.dart';import 'package:flutter/material.dart';/// A controller class for the StainRemovelScreen.
///
/// This class manages the state of the StainRemovelScreen, including the
/// current stainRemovelModelObj
class StainRemovelController extends GetxController {TextEditingController serviceSelectedvalueController = TextEditingController();

TextEditingController textFieldController = TextEditingController();

Rx<StainRemovelModel> stainRemovelModelObj = StainRemovelModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); serviceSelectedvalueController.dispose(); textFieldController.dispose(); } 
onSelected(dynamic value) { for (var element in stainRemovelModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} stainRemovelModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in stainRemovelModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} stainRemovelModelObj.value.dropdownItemList1.refresh(); } 
 }
