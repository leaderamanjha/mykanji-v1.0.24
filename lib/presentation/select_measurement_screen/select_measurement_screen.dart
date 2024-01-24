import '../select_measurement_screen/widgets/frame11_item_widget.dart';import '../select_measurement_screen/widgets/frame13_item_widget.dart';import 'controller/select_measurement_controller.dart';import 'models/frame11_item_model.dart';import 'models/frame13_item_model.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_trailing_image.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_drop_down.dart';import 'package:mykanji/widgets/custom_elevated_button.dart';import 'package:mykanji/widgets/custom_outlined_button.dart';import 'package:mykanji/widgets/custom_text_form_field.dart';class SelectMeasurementScreen extends GetWidget<SelectMeasurementController> {const SelectMeasurementScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 18.v), child: Padding(padding: EdgeInsets.only(bottom: 10.v), child: Column(children: [_buildServiceProvider(), SizedBox(height: 34.v), _buildFrame(), SizedBox(height: 36.v), _buildFrame1(), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_blouse_type".tr, style: CustomTextStyles.titleSmallCabinBlack900))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIconsArrowdropdown24px, height: 24.adaptSize, width: 24.adaptSize)), hintText: "msg_cut_blouses_1500".tr, hintStyle: CustomTextStyles.bodyLargeGray800, items: controller.selectMeasurementModelObj.value.dropdownItemList1.value, borderDecoration: DropDownStyleHelper.outlineGray, filled: false, onChanged: (value) {controller.onSelected1(value);})), SizedBox(height: 35.v), _buildFrame2(), SizedBox(height: 16.v), _buildFrame5(), _buildFrame6(), _buildFrame7(), _buildFrame8(), _buildFrame9(), SizedBox(height: 29.v), SizedBox(width: 108.h, child: Divider())])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgNotificationBlack900, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildServiceProvider() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_service_provider2".tr, style: theme.textTheme.titleMedium), SizedBox(height: 9.v), Container(decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgFrame, height: 64.adaptSize, width: 64.adaptSize, radius: BorderRadius.circular(4.h)), Padding(padding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 7.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_service_provider".tr, style: CustomTextStyles.titleMediumGray90002), SizedBox(height: 7.v), SizedBox(width: 237.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_rating_4_3".tr, style: CustomTextStyles.bodyMedium_1), SizedBox(height: 18.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray700, endIndent: 2.h)), Text("msg_price_range_250_550".tr, style: CustomTextStyles.bodyMedium_1)]))]))]))])); } 
/// Section Widget
Widget _buildFrame() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_service_selected".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), CustomTextFormField(controller: controller.stitchingvalueController, hintText: "lbl_stitching".tr, hintStyle: CustomTextStyles.bodyLargeGray800, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v), borderDecoration: TextFormFieldStyleHelper.outlineGray, filled: false)])); } 
/// Section Widget
Widget _buildFrame1() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_select_clothing".tr, style: theme.textTheme.titleMedium), SizedBox(height: 15.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIconsArrowdropdown24px, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_blouse".tr, hintStyle: CustomTextStyles.bodyLargeGray900, items: controller.selectMeasurementModelObj.value.dropdownItemList.value, onChanged: (value) {controller.onSelected(value);})])); } 
/// Section Widget
Widget _buildFrame2() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_style_description".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), CustomTextFormField(controller: controller.descriptionController, hintText: "msg_take_your_design".tr, hintStyle: CustomTextStyles.bodyLargeCabinGray90003, maxLines: 4, borderDecoration: TextFormFieldStyleHelper.outlineGray, filled: false)])); } 
/// Section Widget
Widget _buildFrame3() { return Padding(padding: EdgeInsets.only(right: 48.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_upload_reference".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), Obx(() => Wrap(runSpacing: 16.v, spacing: 16.h, children: List<Widget>.generate(controller.selectMeasurementModelObj.value.frame11ItemList.value.length, (index) {Frame11ItemModel model = controller.selectMeasurementModelObj.value.frame11ItemList.value[index]; return Frame11ItemWidget(model);})))])); } 
/// Section Widget
Widget _buildFrame4() { return Padding(padding: EdgeInsets.only(right: 48.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_upload_material".tr, style: theme.textTheme.titleMedium), SizedBox(height: 9.v), Obx(() => Wrap(runSpacing: 16.v, spacing: 16.h, children: List<Widget>.generate(controller.selectMeasurementModelObj.value.frame13ItemList.value.length, (index) {Frame13ItemModel model = controller.selectMeasurementModelObj.value.frame13ItemList.value[index]; return Frame13ItemWidget(model);})))])); } 
/// Section Widget
Widget _buildFrame5() { return GestureDetector(onTap: () {onTapFrame();}, child: Container(width: 412.h, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), _buildFrame3(), SizedBox(height: 27.v), _buildFrame4()]))); } 
/// Section Widget
Widget _buildFrame6() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_estimated_price".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), CustomTextFormField(controller: controller.priceController, hintText: "lbl_2_500".tr, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v), borderDecoration: TextFormFieldStyleHelper.outlineGray, filled: false)])); } 
/// Section Widget
Widget _buildFrame7() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_select_add_on".tr, style: theme.textTheme.titleMedium), SizedBox(height: 17.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIconsArrowdropdown24px, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_select_item".tr, hintStyle: CustomTextStyles.bodyLargeGray800, items: controller.selectMeasurementModelObj.value.dropdownItemList2.value, borderDecoration: DropDownStyleHelper.outlineGray, filled: false, onChanged: (value) {controller.onSelected2(value);})])); } 
/// Section Widget
Widget _buildFrame8() { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Align(alignment: Alignment.centerLeft, child: Text("msg_select_measurements".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 17.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIconsArrowdropdown24px, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_measurements_1".tr, items: controller.selectMeasurementModelObj.value.dropdownItemList3.value, borderDecoration: DropDownStyleHelper.outlineGray, filled: false, onChanged: (value) {controller.onSelected3(value);}), SizedBox(height: 16.v), Column(children: [CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 12.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIconsArrowdropdown24px, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_select_item".tr, hintStyle: CustomTextStyles.bodyLargeGray800, items: controller.selectMeasurementModelObj.value.dropdownItemList4.value, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v), child: CustomImageView(imagePath: ImageConstant.imgSearchGray80001, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.symmetric(vertical: 18.v), onChanged: (value) {controller.onSelected4(value);}), Container(padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v), decoration: AppDecoration.outlineBlack9002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 44.h, top: 18.v, bottom: 18.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_add_new_measurements".tr, style: CustomTextStyles.bodyLargeGray900), SizedBox(height: 37.v), Text("lbl_measurements_1".tr, style: CustomTextStyles.bodyLargeGray900), SizedBox(height: 36.v), Text("lbl_measurements_2".tr, style: CustomTextStyles.bodyLargeGray900), SizedBox(height: 37.v), Text("lbl_measurements_3".tr, style: CustomTextStyles.bodyLargeGray900)])), SizedBox(height: 224.v, child: VerticalDivider(width: 4.h, thickness: 4.v, color: appTheme.gray600, endIndent: 122.h))]))])])); } 
/// Section Widget
Widget _buildFrame9() { return Container(padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomOutlinedButton(width: 173.h, text: "lbl_save_add_more".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgPlus, height: 18.adaptSize, width: 18.adaptSize)), buttonStyle: CustomButtonStyles.outlineDeepPurple), CustomElevatedButton(width: 157.h, text: "lbl_confirm_quote".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgArrowLeftGray50, height: 18.adaptSize, width: 18.adaptSize)), buttonStyle: CustomButtonStyles.fillDeepPurple)])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the uploadImageScreen when the action is triggered.
onTapFrame() { Get.toNamed(AppRoutes.uploadImageScreen, ); } 
 }