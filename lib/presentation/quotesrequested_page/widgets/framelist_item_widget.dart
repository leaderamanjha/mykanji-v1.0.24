import '../controller/quotesrequested_controller.dart';
import '../models/framelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class FramelistItemWidget extends StatelessWidget {
  FramelistItemWidget(
    this.framelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramelistItemModel framelistItemModelObj;

  var controller = Get.find<QuotesrequestedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillDeeppurple50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              framelistItemModelObj.headlineText!.value,
              style: CustomTextStyles.bodyLargeGray900,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              framelistItemModelObj.supportingText!.value,
              style: CustomTextStyles.bodyMediumRobotoGray800,
            ),
          ),
        ],
      ),
    );
  }
}
