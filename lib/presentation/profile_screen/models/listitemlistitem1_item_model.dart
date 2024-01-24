import '../../../core/app_export.dart';/// This class is used in the [listitemlistitem1_item_widget] screen.
class Listitemlistitem1ItemModel {Listitemlistitem1ItemModel({this.wishlistImage, this.wishlistText, this.id, }) { wishlistImage = wishlistImage  ?? Rx(ImageConstant.imgWishlistPro);wishlistText = wishlistText  ?? Rx("Wishlist");id = id  ?? Rx(""); }

Rx<String>? wishlistImage;

Rx<String>? wishlistText;

Rx<String>? id;

 }
