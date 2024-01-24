import '../../../core/app_export.dart';/// This class is used in the [discountscomponent_item_widget] screen.
class DiscountscomponentItemModel {DiscountscomponentItemModel({this.discountImage, this.discountText, this.mainText, this.id, }) { discountImage = discountImage  ?? Rx(ImageConstant.imgIconDiskon);discountText = discountText  ?? Rx("F&B discount 75%");mainText = mainText  ?? Rx("Discounts for all orders");id = id  ?? Rx(""); }

Rx<String>? discountImage;

Rx<String>? discountText;

Rx<String>? mainText;

Rx<String>? id;

 }
