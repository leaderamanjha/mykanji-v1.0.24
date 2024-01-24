import '../controller/report_controller.dart';
import '../models/statelayerlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class StatelayerlistItemWidget extends StatelessWidget {
  StatelayerlistItemWidget(
    this.statelayerlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StatelayerlistItemModel statelayerlistItemModelObj;

  var controller = Get.find<ReportController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: statelayerlistItemModelObj.violationImage!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 28.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      statelayerlistItemModelObj.headlineText!.value,
                      style: CustomTextStyles.bodyLargeGray90002,
                    ),
                  ),
                  SizedBox(
                    width: 248.h,
                    child: Obx(
                      () => Text(
                        statelayerlistItemModelObj.supportingText!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodyMediumRobotoGray700.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 28.v,
              bottom: 28.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: CustomImageView(
                  imagePath: statelayerlistItemModelObj.inboxButton!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
