import '../../../core/app_export.dart';import 'discountscomponent_item_model.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [restore_services_provider_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RestoreServicesProviderProfileModel {Rx<List<DiscountscomponentItemModel>> discountscomponentItemList = Rx([DiscountscomponentItemModel(discountImage:ImageConstant.imgIconDiskon.obs,discountText: "F&B discount 75%".obs,mainText: "Discounts for all orders".obs),DiscountscomponentItemModel(discountImage:ImageConstant.imgIconGray90002.obs,discountText: "Offer discount 50%".obs,mainText: "Applicable for all merchants".obs)]);

Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(username: "Volker Forster".obs,verificationStatus: "Verified Buyer".obs,reviewText: "It is okay, but not “premium”.\nDon’t get...".obs,image:ImageConstant.imgStar9.obs,ratingText: "4.3".obs,date: "May 27".obs),UserprofileItemModel(username: "Volker Forster".obs,verificationStatus: "Verified Buyer".obs,reviewText: "It is okay, but not “premium”.\nDon’t get...".obs)]);

 }
