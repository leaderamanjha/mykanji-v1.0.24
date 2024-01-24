import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/forgotpassword_screen/models/forgotpassword_model.dart';import 'package:flutter/material.dart';import 'package:mykanji/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the ForgotpasswordScreen.
///
/// This class manages the state of the ForgotpasswordScreen, including the
/// current forgotpasswordModelObj
class ForgotpasswordController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<ForgotpasswordModel> forgotpasswordModelObj = ForgotpasswordModel().obs;

PostForgotPasswordPostResp postForgotPasswordPostResp = PostForgotPasswordPostResp();

@override void onClose() { super.onClose(); emailController.dispose(); } 
/// Calls the http://103.160.107.21:3000/auth/forgot-password API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callForgotPasswordPost(Map req) async  { try{
postForgotPasswordPostResp   =  await Get.find<ApiClient>().forgotPasswordPost(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleForgotPasswordPostSuccess();
} on PostForgotPasswordPostResp catch(e)
{
postForgotPasswordPostResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleForgotPasswordPostSuccess() { 

Get.find<PrefUtils>().setEmailsucess(postForgotPasswordPostResp.message ?? ''); } 
 }
