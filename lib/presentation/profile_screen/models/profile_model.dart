import '../../../core/app_export.dart';import 'listitemlistitem1_item_model.dart';/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {Rx<List<Listitemlistitem1ItemModel>> listitemlistitem1ItemList = Rx([Listitemlistitem1ItemModel(wishlistImage:ImageConstant.imgWishlistPro.obs,wishlistText: "Wishlist".obs),Listitemlistitem1ItemModel(wishlistImage:ImageConstant.imgScale.obs,wishlistText: "My Measurements".obs),Listitemlistitem1ItemModel(wishlistImage:ImageConstant.imgKey.obs,wishlistText: "Login and Security".obs),Listitemlistitem1ItemModel(wishlistImage:ImageConstant.imgNotifications.obs,wishlistText: "Notifications".obs)]);

 }
