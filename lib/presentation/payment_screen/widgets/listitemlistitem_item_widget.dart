import '../controller/payment_controller.dart';
import '../models/listitemlistitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class ListitemlistitemItemWidget extends StatelessWidget {
  ListitemlistitemItemWidget(
    this.listitemlistitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListitemlistitemItemModel listitemlistitemItemModelObj;

  var controller = Get.find<PaymentController>();

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
              top: 9.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listitemlistitemItemModelObj.headline!.value,
                    style: CustomTextStyles.titleMediumGray90002,
                  ),
                ),
                Obx(
                  () => Text(
                    listitemlistitemItemModelObj.supportingText!.value,
                    style: CustomTextStyles.bodyMediumGray700_1,
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
