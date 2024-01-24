import '../models/frame5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Frame5ItemWidget extends StatelessWidget {
  Frame5ItemWidget(
    this.frame5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame5ItemModel frame5ItemModelObj;

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
          frame5ItemModelObj.button!.value,
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
        selected: (frame5ItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.deepPurple50,
        selectedColor: appTheme.deepPurple50,
        shape: (frame5ItemModelObj.isSelected?.value ?? false)
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
          frame5ItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
