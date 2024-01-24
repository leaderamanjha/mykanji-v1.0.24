import 'thumbnail_item_model.dart';import '../../../core/app_export.dart';import 'productcard1_item_model.dart';/// This class defines the variables used in the [one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OneModel {Rx<List<ThumbnailItemModel>> thumbnailItemList = Rx(List.generate(1,(index) => ThumbnailItemModel()));

Rx<String> zariPureSilkPaithaniSaree = Rx("");

Rx<List<Productcard1ItemModel>> productcard1ItemList = Rx([Productcard1ItemModel(titleText: "Zari Pure Silk ".obs,subheadText: "₹3,500".obs)]);

 }
