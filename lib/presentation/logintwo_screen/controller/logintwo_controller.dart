import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/logintwo_screen/models/logintwo_model.dart';import 'package:flutter/material.dart';import 'package:mykanji/data/models/authLoginPost/post_auth_login_post_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the LogintwoScreen.
///
/// This class manages the state of the LogintwoScreen, including the
/// current logintwoModelObj
class LogintwoController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LogintwoModel> logintwoModelObj = LogintwoModel().obs;

Rx<bool> isShowPassword = true.obs;

PostAuthLoginPostResp postAuthLoginPostResp = PostAuthLoginPostResp();

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
/// Calls the http://103.160.107.21:3000/auth/login API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callAuthLoginPost(Map req) async  { try{
postAuthLoginPostResp   =  await Get.find<ApiClient>().authLoginPost(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleAuthLoginPostSuccess();
} on PostAuthLoginPostResp catch(e)
{
postAuthLoginPostResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleAuthLoginPostSuccess() { 

Get.find<PrefUtils>().setToken(postAuthLoginPostResp.token ?? ''); } 
 }
