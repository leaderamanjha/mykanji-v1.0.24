import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/forgetpasswordotp_screen/models/forgetpasswordotp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';import 'package:mykanji/data/models/authForgotPasswordVerifyPost/post_auth_forgot_password_verify_post_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the ForgetpasswordotpScreen.
///
/// This class manages the state of the ForgetpasswordotpScreen, including the
/// current forgetpasswordotpModelObj
class ForgetpasswordotpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<ForgetpasswordotpModel> forgetpasswordotpModelObj = ForgetpasswordotpModel().obs;

PostAuthForgotPasswordVerifyPostResp postAuthForgotPasswordVerifyPostResp = PostAuthForgotPasswordVerifyPostResp();

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
/// Calls the http://103.160.107.21:3000/auth/forgot-password/verify API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callAuthForgotPasswordVerifyPost(Map req) async  { try{
postAuthForgotPasswordVerifyPostResp   =  await Get.find<ApiClient>().authForgotPasswordVerifyPost(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleAuthForgotPasswordVerifyPostSuccess();
} on PostAuthForgotPasswordVerifyPostResp catch(e)
{
postAuthForgotPasswordVerifyPostResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleAuthForgotPasswordVerifyPostSuccess() { 

 } 
 }
