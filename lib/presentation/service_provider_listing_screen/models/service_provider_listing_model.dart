import '../../../core/app_export.dart';import 'listviewlist_item_model.dart';/// This class defines the variables used in the [service_provider_listing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServiceProviderListingModel {Rx<List<ListviewlistItemModel>> listviewlistItemList = Rx([ListviewlistItemModel(image:ImageConstant.imgFrame180x380.obs,serviceProviderName: "Service Provider Name".obs,priceRange: "Price Range ₹100-₹200".obs),ListviewlistItemModel(image:ImageConstant.imgFrame128.obs)]);

 }
