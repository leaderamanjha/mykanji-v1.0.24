import 'frame7_item_model.dart';import 'frame9_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [select_item_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectItemModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Frame7ItemModel>> frame7ItemList = Rx(List.generate(2,(index) =>Frame7ItemModel()));

Rx<List<Frame9ItemModel>> frame9ItemList = Rx(List.generate(2,(index) =>Frame9ItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
