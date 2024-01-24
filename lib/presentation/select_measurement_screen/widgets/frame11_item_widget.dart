import '../models/frame11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Frame11ItemWidget extends StatelessWidget {
  Frame11ItemWidget(
    this.frame11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame11ItemModel frame11ItemModelObj;

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
          frame11ItemModelObj.button!.value,
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
        selected: (frame11ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.deepPurple50,
        selectedColor: appTheme.deepPurple50,
        shape: (frame11ItemModelObj.isSelected?.value ?? false)
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
          frame11ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
