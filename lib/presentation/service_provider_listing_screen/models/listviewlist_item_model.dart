import '../../../core/app_export.dart';/// This class is used in the [listviewlist_item_widget] screen.
class ListviewlistItemModel {ListviewlistItemModel({this.image, this.serviceProviderName, this.priceRange, this.id, }) { image = image  ?? Rx(ImageConstant.imgFrame180x380);serviceProviderName = serviceProviderName  ?? Rx("Service Provider Name");priceRange = priceRange  ?? Rx("Price Range ₹100-₹200");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? serviceProviderName;

Rx<String>? priceRange;

Rx<String>? id;

 }
