import '../controller/return_refund_one_controller.dart';
import '../models/statelayer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class StatelayerItemWidget extends StatelessWidget {
  StatelayerItemWidget(
    this.statelayerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StatelayerItemModel statelayerItemModelObj;

  var controller = Get.find<ReturnRefundOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: statelayerItemModelObj.qualityIssueImage!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 7.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    statelayerItemModelObj.headlineText!.value,
                    style: CustomTextStyles.bodyLargeGray90002,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    statelayerItemModelObj.supportingText!.value,
                    style: CustomTextStyles.bodyMediumRobotoGray700,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              right: 8.h,
              bottom: 7.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: CustomImageView(
                  imagePath: statelayerItemModelObj.inboxButton!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
