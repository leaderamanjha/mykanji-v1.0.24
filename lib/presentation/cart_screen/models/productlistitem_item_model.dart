import '../../../core/app_export.dart';/// This class is used in the [productlistitem_item_widget] screen.
class ProductlistitemItemModel {ProductlistitemItemModel({this.headline, this.supportingText, this.id, }) { headline = headline  ?? Rx("Product Name");supportingText = supportingText  ?? Rx("Price: ₹2,000");id = id  ?? Rx(""); }

Rx<String>? headline;

Rx<String>? supportingText;

Rx<String>? id;

 }
