import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.titleText, this.subheadText, this.id, }) { titleText = titleText  ?? Rx("Zari Pure Silk ");subheadText = subheadText  ?? Rx("₹3,500");id = id  ?? Rx(""); }

Rx<String>? titleText;

Rx<String>? subheadText;

Rx<String>? id;

 }
