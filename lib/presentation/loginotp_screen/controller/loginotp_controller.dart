import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/loginotp_screen/models/loginotp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';import 'package:mykanji/data/models/loginWithOtp/post_login_with_otp_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the LoginotpScreen.
///
/// This class manages the state of the LoginotpScreen, including the
/// current loginotpModelObj
class LoginotpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<LoginotpModel> loginotpModelObj = LoginotpModel().obs;

PostLoginWithOtpResp postLoginWithOtpResp = PostLoginWithOtpResp();

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
/// Calls the http://103.160.107.21:3000/auth/loginWithOtp API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callLoginWithOtp(Map req) async  { try{
postLoginWithOtpResp   =  await Get.find<ApiClient>().loginWithOtp(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleLoginWithOtpSuccess();
} on PostLoginWithOtpResp catch(e)
{
postLoginWithOtpResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleLoginWithOtpSuccess() { 

Get.find<PrefUtils>().setToken(postLoginWithOtpResp.token ?? ''); } 
 }
