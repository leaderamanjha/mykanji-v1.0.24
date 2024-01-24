import 'controller/sign_up_one_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/core/utils/validation_functions.dart';import 'package:mykanji/widgets/custom_elevated_button.dart';import 'package:mykanji/widgets/custom_outlined_button.dart';import 'package:mykanji/widgets/custom_text_form_field.dart';import 'package:mykanji/data/models/registerUser/post_register_user_req.dart';import 'package:mykanji/data/models/registerUser/post_register_user_resp.dart';
// ignore_for_file: must_be_immutable
class SignUpOneScreen extends GetWidget<SignUpOneController> {SignUpOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgLogo, height: 80.adaptSize, width: 80.adaptSize), SizedBox(height: 29.v), Text("lbl_sign_up".tr, style: CustomTextStyles.titleLargeSFPro), SizedBox(height: 25.v), _buildInputWithLabelName(), SizedBox(height: 13.v), _buildInputWithLabelPhoneNumber(), SizedBox(height: 6.v), _buildInputWithLabelPassword(), SizedBox(height: 12.v), _buildInputWithLabelConfirmPassword(), SizedBox(height: 27.v), _buildContinue(), SizedBox(height: 28.v), _buildFrame(), SizedBox(height: 26.v), _buildSocialButtons(), SizedBox(height: 28.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_already_have_an".tr, style: CustomTextStyles.bodyLargeSFProBlack900), GestureDetector(onTap: () {onTapTxtLogIn();}, child: Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_login".tr, style: CustomTextStyles.titleMediumSFProBlue300.copyWith(decoration: TextDecoration.underline))))]), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
Widget _buildInputWithLabelName() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_name".tr, style: theme.textTheme.bodySmall), SizedBox(height: 6.v), CustomTextFormField(controller: controller.nameController, hintText: "lbl_siddartha".tr, hintStyle: CustomTextStyles.bodyLargeSFProPrimaryContainer_1, prefix: Container(margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgMail, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 41.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL12)]); } 
/// Section Widget
Widget _buildInputWithLabelPhoneNumber() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_phone_number_e_mail".tr, style: theme.textTheme.bodySmall), SizedBox(height: 5.v), CustomTextFormField(controller: controller.emailController, hintText: "lbl_91_98945_65589".tr, hintStyle: CustomTextStyles.bodyLargeSFProPrimaryContainer_1, prefix: Container(margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgMail, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 41.v), contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL12)]); } 
/// Section Widget
Widget _buildInputWithLabelPassword() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: theme.textTheme.bodySmall), SizedBox(height: 6.v), Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_opksdgb245w".tr, hintStyle: CustomTextStyles.bodyLargeSFProPrimaryContainer_1, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgPassword, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 41.v), suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgEyeOpen, height: 16.adaptSize, width: 16.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 41.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.symmetric(vertical: 10.v)))]); } 
/// Section Widget
Widget _buildConfirmpassword() { return Obx(() => CustomTextFormField(controller: controller.confirmpasswordController, hintText: "lbl_opksdgb245w".tr, hintStyle: CustomTextStyles.bodyLargeSFProPrimaryContainer_1, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(14.h, 10.v, 8.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgPassword, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 41.v), suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 14.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgEyeOpen, height: 16.adaptSize, width: 16.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 41.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword1.value, contentPadding: EdgeInsets.symmetric(vertical: 10.v))); } 
/// Section Widget
Widget _buildInputWithLabelConfirmPassword() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_confirm_password".tr, style: theme.textTheme.bodySmall), SizedBox(height: 6.v), _buildConfirmpassword()]); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(height: 46.v, text: "lbl_continue".tr, buttonStyle: CustomButtonStyles.outlinePrimary, buttonTextStyle: CustomTextStyles.titleMediumSFProWhiteA70001SemiBold, onPressed: () {onTapContinue();}); } 
/// Section Widget
Widget _buildFrame() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 10.v), child: SizedBox(width: 174.h, child: Divider(color: appTheme.gray80001))), Text("lbl_or".tr, style: CustomTextStyles.bodyLargeSFProGray80001), Padding(padding: EdgeInsets.only(top: 8.v, bottom: 10.v), child: SizedBox(width: 174.h, child: Divider(color: appTheme.gray80001)))]); } 
/// Section Widget
Widget _buildSignUpWithGoogle() { return CustomOutlinedButton(height: 44.v, text: "msg_sign_up_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgSocialIcon, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineBlueGrayTL12, buttonTextStyle: CustomTextStyles.titleMediumSFProBluegray800); } 
/// Section Widget
Widget _buildSignUpWithFacebook() { return CustomElevatedButton(height: 44.v, text: "msg_sign_up_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgSocialIconOnerrorcontainer, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL12, buttonTextStyle: CustomTextStyles.titleMediumSFProWhiteA70001SemiBold); } 
/// Section Widget
Widget _buildSignUpWithApple() { return CustomElevatedButton(height: 44.v, text: "msg_sign_up_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgAppleSocialIcon, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL121, buttonTextStyle: CustomTextStyles.titleMediumSFProWhiteA70001SemiBold); } 
/// Section Widget
Widget _buildSocialButtons() { return Column(children: [_buildSignUpWithGoogle(), SizedBox(height: 12.v), _buildSignUpWithFacebook(), SizedBox(height: 12.v), _buildSignUpWithApple()]); } 
/// calls the [http://103.160.107.21:3000/auth/register] API 
///
/// validates the form input fields and executes the API if all the fields are valid
/// It has [PostRegisterUserReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onOnTapContinueSuccess()` function.
/// If the call fails, the function calls the `_onOnTapContinueError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
Future<void> onTapContinue() async  { if(_formKey.currentState!.validate()) {PostRegisterUserReq postRegisterUserReq = PostRegisterUserReq(name : controller.nameController.text,userName : controller.emailController.text,password : controller.passwordController.text,confirmPassword : controller.confirmpasswordController.text,);try {
await controller.callRegisterUser(postRegisterUserReq.toJson(),);_onOnTapContinueSuccess();} on PostRegisterUserResp {_onOnTapContinueError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
}} } 
/// Navigates to the signupotpScreen when the action is triggered.
void _onOnTapContinueSuccess() { Get.toNamed(AppRoutes.signupotpScreen, ); } 
/// Displays an alert dialog when the action is triggered.
/// The dialog box contains a title and a message with the `Retry`
void _onOnTapContinueError() { 

Get.defaultDialog( onConfirm: () => Get.back(), title: "Failed", middleText: "Retry"); } 
/// Navigates to the logintwoScreen when the action is triggered.
onTapTxtLogIn() { Get.toNamed(AppRoutes.logintwoScreen, ); } 
 }
