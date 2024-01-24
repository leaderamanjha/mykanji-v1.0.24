import 'controller/lower_body_controller.dart';
import 'models/lower_body_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_floating_text_field.dart';

class LowerBodyPage extends StatelessWidget {
  LowerBodyPage({Key? key})
      : super(
          key: key,
        );

  LowerBodyController controller =
      Get.put(LowerBodyController(LowerBodyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Column(
                  children: [
                    _buildHipHeightvalue(),
                    SizedBox(height: 16.v),
                    _buildCalfvalue(),
                    SizedBox(height: 16.v),
                    _buildThighvalue(),
                    SizedBox(height: 16.v),
                    _buildInseamvalue(),
                    SizedBox(height: 16.v),
                    _buildOutseamvalue(),
                    SizedBox(height: 24.v),
                    Text(
                      "lbl_view_size_chart".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 16.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 687.v,
                      width: 412.h,
                    ),
                    SizedBox(height: 23.v),
                    SizedBox(
                      width: 108.h,
                      child: Divider(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHipHeightvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.hipHeightvalueController,
        labelText: "lbl_hip_height".tr,
        labelStyle: CustomTextStyles.bodyLargeGray900,
        hintText: "lbl_hip_height".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCalfvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.calfvalueController,
        labelText: "lbl_calf".tr,
        labelStyle: CustomTextStyles.bodyLargeGray900,
        hintText: "lbl_calf".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildThighvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.thighvalueController,
        labelText: "lbl_thigh".tr,
        labelStyle: CustomTextStyles.bodyLargeGray900,
        hintText: "lbl_thigh".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildInseamvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.inseamvalueController,
        labelText: "lbl_inseam".tr,
        labelStyle: CustomTextStyles.bodySmallRobotoGray800,
        hintText: "lbl_inseam".tr,
        contentPadding: EdgeInsets.fromLTRB(16.h, -7.v, 16.h, 48.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildOutseamvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.outseamvalueController,
        labelText: "lbl_out_seam".tr,
        labelStyle: CustomTextStyles.bodySmallRobotoGray800,
        hintText: "lbl_out_seam".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.fromLTRB(16.h, -7.v, 16.h, 48.v),
      ),
    );
  }
}
