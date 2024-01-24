import '../models/frame13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Frame13ItemWidget extends StatelessWidget {
  Frame13ItemWidget(
    this.frame13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame13ItemModel frame13ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.only(
          top: 12.v,
          right: 24.h,
          bottom: 12.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          frame13ItemModelObj.button!.value,
          style: TextStyle(
            color: appTheme.gray90002,
            fontSize: 12.fSize,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgIconsFileupload,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (frame13ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.deepPurple50,
        selectedColor: appTheme.deepPurple50,
        shape: (frame13ItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray90002.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          frame13ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
