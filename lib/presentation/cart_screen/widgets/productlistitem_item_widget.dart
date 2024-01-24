import '../controller/cart_controller.dart';
import '../models/productlistitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistitemItemWidget extends StatelessWidget {
  ProductlistitemItemWidget(
    this.productlistitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistitemItemModel productlistitemItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeeppurple50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    productlistitemItemModelObj.headline!.value,
                    style: CustomTextStyles.bodyLargeGray90002,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    productlistitemItemModelObj.supportingText!.value,
                    style: CustomTextStyles.bodyMediumRobotoGray700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
