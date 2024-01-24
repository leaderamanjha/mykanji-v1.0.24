import 'controller/feedback_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_elevated_button.dart';import 'package:mykanji/widgets/custom_rating_bar.dart';import 'package:mykanji/widgets/custom_text_form_field.dart';class FeedbackScreen extends GetWidget<FeedbackController> {const FeedbackScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: 412.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), child: Column(children: [SizedBox(height: 9.v), _buildFeedbackFrame(), SizedBox(height: 42.v), Align(alignment: Alignment.centerLeft, child: Container(width: 340.h, margin: EdgeInsets.only(left: 8.h, right: 31.h), child: Text("msg_rate_your_overall".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeSFProGray90005.copyWith(height: 1.50)))), SizedBox(height: 21.v), CustomRatingBar(initialRating: 0, itemSize: 32), Spacer(), CustomElevatedButton(text: "lbl_submit".tr, buttonStyle: CustomButtonStyles.fillOnPrimary, buttonTextStyle: CustomTextStyles.titleSmallWhiteA70001), SizedBox(height: 25.v), SizedBox(width: 108.h, child: Divider())])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "lbl_feedback2".tr), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildFeedbackFrame() { return Container(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_what_s_your_feedback".tr, style: CustomTextStyles.bodyLargeSFProBlack900), SizedBox(height: 12.v), CustomTextFormField(controller: controller.briefhereController, hintText: "lbl_brief_here".tr, hintStyle: CustomTextStyles.bodyLargeSFProBluegray500, textInputAction: TextInputAction.done, maxLines: 6, borderDecoration: TextFormFieldStyleHelper.outlineGrayTL81)])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
