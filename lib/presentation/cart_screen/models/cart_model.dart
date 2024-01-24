import '../../../core/app_export.dart';import 'productlistitem_item_model.dart';/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {Rx<List<ProductlistitemItemModel>> productlistitemItemList = Rx([ProductlistitemItemModel(headline: "Product Name".obs,supportingText: "Price: ₹2,000".obs),ProductlistitemItemModel(headline: "Product Name".obs,supportingText: "Price: ₹2,000".obs),ProductlistitemItemModel(headline: "Product Name".obs,supportingText: "Price: ₹2,000".obs)]);

Rx<String> price = Rx("");

 }
