import '../controller/final_restore_controller.dart';
import '../models/frame17_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Frame17ItemWidget extends StatelessWidget {
  Frame17ItemWidget(
    this.frame17ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame17ItemModel frame17ItemModelObj;

  var controller = Get.find<FinalRestoreController>();

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
