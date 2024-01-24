import '../controller/final_select_upcycle_controller.dart';
import '../models/frame15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Frame15ItemWidget extends StatelessWidget {
  Frame15ItemWidget(
    this.frame15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame15ItemModel frame15ItemModelObj;

  var controller = Get.find<FinalSelectUpcycleController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 161.v,
      width: 182.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnail,
            height: 161.v,
            width: 182.h,
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 12.h,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(2.h),
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgCloseGray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
