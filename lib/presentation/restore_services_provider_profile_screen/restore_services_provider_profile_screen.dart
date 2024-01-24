import '../restore_services_provider_profile_screen/widgets/discountscomponent_item_widget.dart';import '../restore_services_provider_profile_screen/widgets/userprofile_item_widget.dart';import 'controller/restore_services_provider_profile_controller.dart';import 'models/discountscomponent_item_model.dart';import 'models/userprofile_item_model.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_trailing_image.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_elevated_button.dart';import 'package:mykanji/widgets/custom_rating_bar.dart';class RestoreServicesProviderProfileScreen extends GetWidget<RestoreServicesProviderProfileController> {const RestoreServicesProviderProfileScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 19.v), child: Padding(padding: EdgeInsets.only(bottom: 10.v), child: Column(children: [Text("msg_sultan_dry_cleaner".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 5.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 50.h, decoration: AppDecoration.fillTeal.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_4_8".tr, style: CustomTextStyles.titleSmallCabinWhiteA70001)), CustomImageView(imagePath: ImageConstant.imgStar6, height: 11.adaptSize, width: 11.adaptSize, radius: BorderRadius.circular(1.h), margin: EdgeInsets.symmetric(vertical: 4.v))])), Padding(padding: EdgeInsets.only(left: 7.h), child: Text("lbl_20_reviews".tr, style: CustomTextStyles.bodyMediumErrorContainer))]), SizedBox(height: 8.v), CustomElevatedButton(height: 24.v, width: 122.h, text: "msg_4_6km_fairgrounds".tr, buttonStyle: CustomButtonStyles.fillGrayTL12, buttonTextStyle: CustomTextStyles.bodySmallCabinGray90002_1), SizedBox(height: 17.v), Padding(padding: EdgeInsets.symmetric(horizontal: 94.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(children: [Text("lbl_149_890".tr, style: CustomTextStyles.titleSmallCabinGray90002Bold), SizedBox(height: 7.v), Text("lbl_price_range".tr, style: CustomTextStyles.bodyMedium_1)]), Spacer(flex: 50), SizedBox(height: 41.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray90002.withOpacity(0.1), indent: 6.h, endIndent: 8.h)), Spacer(flex: 49), Column(children: [Text("lbl_126".tr, style: CustomTextStyles.titleSmallCabinGray90002Bold), SizedBox(height: 6.v), Text("lbl_jobs_done".tr, style: CustomTextStyles.bodyMedium_1)])])), SizedBox(height: 15.v), _buildDiscount(), _buildFrame1(), _buildMainServices(), _buildFrame4(), _buildFrame5(), _buildPortfolio(), SizedBox(height: 44.v), SizedBox(width: 108.h, child: Divider())])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgVideoCamera, margin: EdgeInsets.only(left: 16.h, top: 20.v, right: 20.h)), AppbarTrailingImage(imagePath: ImageConstant.imgSend, margin: EdgeInsets.only(left: 24.h, top: 20.v, right: 20.h)), AppbarTrailingImage(imagePath: ImageConstant.imgBookmark, margin: EdgeInsets.only(left: 24.h, top: 20.v, right: 36.h))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildDiscount() { return Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillDeepPurple, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("msg_discount_for_you".tr, style: CustomTextStyles.titleSmallCabinGray90002), SizedBox(height: 15.v), SizedBox(height: 60.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(right: 9.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 16.h);}, itemCount: controller.restoreServicesProviderProfileModelObj.value.discountscomponentItemList.value.length, itemBuilder: (context, index) {DiscountscomponentItemModel model = controller.restoreServicesProviderProfileModelObj.value.discountscomponentItemList.value[index]; return DiscountscomponentItemWidget(model);})))])); } 
/// Section Widget
Widget _buildFrame1() { return Container(width: 412.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v), decoration: AppDecoration.fillGray5001, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Text("msg_short_descriptions".tr, style: CustomTextStyles.titleLargeGray90002), SizedBox(height: 8.v), Container(width: 370.h, margin: EdgeInsets.only(right: 9.h), child: Text("msg_update_your_wardrobe".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeCabinGray90002.copyWith(height: 1.50)))])); } 
/// Section Widget
Widget _buildMainServices() { return Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_all_services".tr, style: CustomTextStyles.titleLargeGray90002)), SizedBox(height: 8.v), GestureDetector(onTap: () {onTapAlteration();}, child: Container(decoration: AppDecoration.fillGray5002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 16.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Padding(padding: EdgeInsets.only(top: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_regular_dry_clean".tr, style: CustomTextStyles.bodyLargeCabinGray900), SizedBox(width: 260.h, child: Text("msg_re_shape_the_garment".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray800.copyWith(height: 1.43)))]))), CustomImageView(imagePath: ImageConstant.imgIconsArrowRight24px, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 55.h, bottom: 40.v))])), SizedBox(height: 13.v), Divider(color: appTheme.blueGray100)]))), SizedBox(height: 16.v), Container(decoration: AppDecoration.fillGray5002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 16.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Padding(padding: EdgeInsets.only(top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_stain_removal".tr, style: CustomTextStyles.bodyLargeCabinGray900), SizedBox(height: 1.v), SizedBox(width: 272.h, child: Text("msg_need_to_remove_tomato".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray800.copyWith(height: 1.43)))]))), CustomImageView(imagePath: ImageConstant.imgIconsArrowRight24px, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 43.h, bottom: 40.v))])), SizedBox(height: 13.v), Divider(color: appTheme.blueGray100)])), SizedBox(height: 16.v), _buildAddEmbellishment(headline: "lbl_polishing".tr, theseimperfectionsin: "msg_these_imperfections".tr), SizedBox(height: 16.v), _buildAddEmbellishment(headline: "lbl_print_and_dye".tr, theseimperfectionsin: "msg_these_imperfections".tr), SizedBox(height: 16.v), _buildAddEmbellishment(headline: "lbl_repair_clothes".tr, theseimperfectionsin: "msg_these_imperfections".tr)])); } 
/// Section Widget
Widget _buildFrame4() { return Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001, child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 2.v), child: CustomRatingBar(initialRating: 4)), Text("lbl_4_8_126".tr, style: CustomTextStyles.bodyLargeCabinBlack900)]), SizedBox(height: 17.v), _buildFrame(reviewText: "msg_seller_communication".tr, ratingValue: "lbl_5_0".tr), SizedBox(height: 9.v), _buildFrame(reviewText: "msg_services_as_described".tr, ratingValue: "lbl_4_0".tr)])); } 
/// Section Widget
Widget _buildFrame5() { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.fillGray5001, child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_20_reviews".tr, style: CustomTextStyles.titleLargeGray90002), Padding(padding: EdgeInsets.only(top: 4.v, bottom: 3.v), child: Text("lbl_see_all".tr, style: CustomTextStyles.bodyMediumOnPrimary.copyWith(decoration: TextDecoration.underline)))])), SizedBox(height: 16.v), SizedBox(height: 180.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(left: 16.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 16.h);}, itemCount: controller.restoreServicesProviderProfileModelObj.value.userprofileItemList.value.length, itemBuilder: (context, index) {UserprofileItemModel model = controller.restoreServicesProviderProfileModelObj.value.userprofileItemList.value[index]; return UserprofileItemWidget(model);})))])); } 
/// Section Widget
Widget _buildPortfolio() { return Container(width: 412.h, padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001, child: Text("lbl_portfolio".tr, style: CustomTextStyles.titleLargeGray90002)); } 
/// Common widget
Widget _buildAddEmbellishment({required String headline, required String theseimperfectionsin, }) { return Container(decoration: AppDecoration.fillGray5002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 16.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Expanded(child: Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(headline, style: CustomTextStyles.bodyLargeCabinGray900.copyWith(color: appTheme.gray900)), SizedBox(width: 290.h, child: Text(theseimperfectionsin, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray800.copyWith(color: appTheme.gray800, height: 1.43)))]))), CustomImageView(imagePath: ImageConstant.imgIconsArrowRight24px, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 25.h, bottom: 40.v))])), SizedBox(height: 13.v), Divider(color: appTheme.blueGray100)])); } 
/// Common widget
Widget _buildFrame({required String reviewText, required String ratingValue, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(reviewText, style: CustomTextStyles.titleSmallCabinGray90002Bold.copyWith(color: appTheme.gray90002)), Spacer(), CustomImageView(imagePath: ImageConstant.imgStar7, height: 14.adaptSize, width: 14.adaptSize, radius: BorderRadius.circular(1.h), margin: EdgeInsets.only(top: 2.v)), Padding(padding: EdgeInsets.only(left: 3.h), child: Text(ratingValue, style: CustomTextStyles.titleSmallCabinErrorContainer.copyWith(color: theme.colorScheme.errorContainer)))]); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the stainRemovelScreen when the action is triggered.
onTapAlteration() { Get.toNamed(AppRoutes.stainRemovelScreen, ); } 
 }