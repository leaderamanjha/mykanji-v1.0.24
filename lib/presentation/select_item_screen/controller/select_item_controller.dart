import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/select_item_screen/models/select_item_model.dart';import 'package:flutter/material.dart';/// A controller class for the SelectItemScreen.
///
/// This class manages the state of the SelectItemScreen, including the
/// current selectItemModelObj
class SelectItemController extends GetxController {TextEditingController stitchingvalueController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

Rx<SelectItemModel> selectItemModelObj = SelectItemModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

@override void onClose() { super.onClose(); stitchingvalueController.dispose(); descriptionController.dispose(); } 
onSelected(dynamic value) { for (var element in selectItemModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectItemModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in selectItemModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectItemModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in selectItemModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectItemModelObj.value.dropdownItemList2.refresh(); } 
 }
