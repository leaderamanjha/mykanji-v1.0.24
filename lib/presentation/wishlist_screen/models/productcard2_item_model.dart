import '../../../core/app_export.dart';/// This class is used in the [productcard2_item_widget] screen.
class Productcard2ItemModel {Productcard2ItemModel({this.titleText, this.subheadText, this.id, }) { titleText = titleText  ?? Rx("Zari Pure Silk ");subheadText = subheadText  ?? Rx("₹3,500");id = id  ?? Rx(""); }

Rx<String>? titleText;

Rx<String>? subheadText;

Rx<String>? id;

 }
