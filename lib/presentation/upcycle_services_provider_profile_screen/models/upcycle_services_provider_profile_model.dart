import '../../../core/app_export.dart';import 'discountscomponent1_item_model.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [upcycle_services_provider_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UpcycleServicesProviderProfileModel {Rx<List<Discountscomponent1ItemModel>> discountscomponent1ItemList = Rx([Discountscomponent1ItemModel(discountImage:ImageConstant.imgIconDiskon.obs,discountText: "F&B discount 75%".obs,mainText: "Discounts for all orders".obs),Discountscomponent1ItemModel(discountImage:ImageConstant.imgIconGray90002.obs,discountText: "Offer discount 50%".obs,mainText: "Applicable for all merchants".obs)]);

Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(username: "Volker Forster".obs,verificationStatus: "Verified Buyer".obs,reviewText: "It is okay, but not “premium”.\nDon’t get...".obs,image:ImageConstant.imgStar91.obs,ratingText: "4.3".obs,date: "May 27".obs),Userprofile1ItemModel(username: "Volker Forster".obs,verificationStatus: "Verified Buyer".obs,reviewText: "It is okay, but not “premium”.\nDon’t get...".obs)]);

 }
