import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/final_select_upcycle_screen/models/final_select_upcycle_model.dart';import 'package:flutter/material.dart';/// A controller class for the FinalSelectUpcycleScreen.
///
/// This class manages the state of the FinalSelectUpcycleScreen, including the
/// current finalSelectUpcycleModelObj
class FinalSelectUpcycleController extends GetxController {TextEditingController textFieldController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

TextEditingController priceController = TextEditingController();

Rx<FinalSelectUpcycleModel> finalSelectUpcycleModelObj = FinalSelectUpcycleModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

@override void onClose() { super.onClose(); textFieldController.dispose(); descriptionController.dispose(); priceController.dispose(); } 
onSelected(dynamic value) { for (var element in finalSelectUpcycleModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} finalSelectUpcycleModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in finalSelectUpcycleModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} finalSelectUpcycleModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in finalSelectUpcycleModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} finalSelectUpcycleModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in finalSelectUpcycleModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} finalSelectUpcycleModelObj.value.dropdownItemList3.refresh(); } 
 }
