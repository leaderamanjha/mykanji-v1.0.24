import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/select_measurement_screen/models/select_measurement_model.dart';import 'package:flutter/material.dart';/// A controller class for the SelectMeasurementScreen.
///
/// This class manages the state of the SelectMeasurementScreen, including the
/// current selectMeasurementModelObj
class SelectMeasurementController extends GetxController {TextEditingController stitchingvalueController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

TextEditingController priceController = TextEditingController();

Rx<SelectMeasurementModel> selectMeasurementModelObj = SelectMeasurementModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

SelectionPopupModel? selectedDropDownValue4;

@override void onClose() { super.onClose(); stitchingvalueController.dispose(); descriptionController.dispose(); priceController.dispose(); } 
onSelected(dynamic value) { for (var element in selectMeasurementModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectMeasurementModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in selectMeasurementModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectMeasurementModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in selectMeasurementModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectMeasurementModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in selectMeasurementModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectMeasurementModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { for (var element in selectMeasurementModelObj.value.dropdownItemList4.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} selectMeasurementModelObj.value.dropdownItemList4.refresh(); } 
 }
