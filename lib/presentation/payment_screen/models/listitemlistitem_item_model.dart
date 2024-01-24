import '../../../core/app_export.dart';/// This class is used in the [listitemlistitem_item_widget] screen.
class ListitemlistitemItemModel {ListitemlistitemItemModel({this.headline, this.supportingText, this.id, }) { headline = headline  ?? Rx("Payout Received");supportingText = supportingText  ?? Rx("Price: ₹2,000");id = id  ?? Rx(""); }

Rx<String>? headline;

Rx<String>? supportingText;

Rx<String>? id;

 }
