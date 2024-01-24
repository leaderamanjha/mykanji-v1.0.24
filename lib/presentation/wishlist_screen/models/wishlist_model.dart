import '../../../core/app_export.dart';import 'productcard2_item_model.dart';/// This class defines the variables used in the [wishlist_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel {Rx<List<Productcard2ItemModel>> productcard2ItemList = Rx([Productcard2ItemModel(titleText: "Zari Pure Silk ".obs,subheadText: "₹3,500".obs),Productcard2ItemModel(titleText: "Sarees 2".obs,subheadText: "₹3,500".obs),Productcard2ItemModel(titleText: "Sarees 3".obs,subheadText: "₹3,500".obs),Productcard2ItemModel(titleText: "Sarees 4".obs,subheadText: "₹3,500".obs)]);

 }
