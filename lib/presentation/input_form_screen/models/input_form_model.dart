import 'frame3_item_model.dart';import 'frame5_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [input_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InputFormModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Frame3ItemModel>> frame3ItemList = Rx(List.generate(2,(index) =>Frame3ItemModel()));

Rx<List<Frame5ItemModel>> frame5ItemList = Rx(List.generate(2,(index) =>Frame5ItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
