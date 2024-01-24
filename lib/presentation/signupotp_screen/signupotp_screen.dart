import 'controller/signupotp_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/custom_elevated_button.dart';import 'package:mykanji/widgets/custom_pin_code_text_field.dart';import 'package:mykanji/data/models/registerOtpPost/post_register_otp_post_req.dart';import 'package:mykanji/data/models/registerOtpPost/post_register_otp_post_resp.dart';class SignupotpScreen extends GetWidget<SignupotpController> {const SignupotpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgLogo, height: 80.adaptSize, width: 80.adaptSize), SizedBox(height: 42.v), Text("lbl_sign_up2".tr, style: CustomTextStyles.titleLargeSFPro), SizedBox(height: 38.v), Align(alignment: Alignment.centerLeft, child: Text("msg_verification_code".tr, style: CustomTextStyles.bodyMediumSFProBluegray800)), SizedBox(height: 7.v), Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 42.v), Text("msg_didn_t_receive".tr, style: CustomTextStyles.bodyMediumSFProBlue300), SizedBox(height: 39.v), CustomImageView(imagePath: ImageConstant.imgEnterOtpCuateErrorcontainer, height: 240.v, width: 226.h), SizedBox(height: 5.v)])), bottomNavigationBar: _buildSubmitButton())); } 
/// Section Widget
Widget _buildSubmitButton() { return CustomElevatedButton(height: 46.v, text: "lbl_submit".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 74.v), buttonStyle: CustomButtonStyles.outlinePrimaryTL8, buttonTextStyle: CustomTextStyles.titleMediumSFProWhiteA70001SemiBold, onPressed: () {RegisterOtp();}); } 
/// calls the [http://103.160.107.21:3000/auth/register/otp] API 
///
/// It has [PostRegisterOtpPostReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onRegisterOtpSuccess()` function.
/// If the call fails, the function calls the `_onRegisterOtpError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
Future<void> RegisterOtp() async  { PostRegisterOtpPostReq postRegisterOtpPostReq = PostRegisterOtpPostReq(otp : int.tryParse(controller.otpController.value.text),);try {
await controller.callRegisterOtpPost(postRegisterOtpPostReq.toJson(),);_onRegisterOtpSuccess();} on PostRegisterOtpPostResp {_onRegisterOtpError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
/// Navigates to the logintwoScreen when the action is triggered.
void _onRegisterOtpSuccess() { Get.toNamed(AppRoutes.logintwoScreen, ); } 
/// Displays a snackBar message when the action is triggered.
/// The raw snackbar display the specified message `Wrong OTP Try Again` using the Get package.
void _onRegisterOtpError() { 

Get.rawSnackbar(message: "Wrong OTP Try Again"); } 
 }
