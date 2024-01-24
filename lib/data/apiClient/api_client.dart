import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/core/utils/progress_dialog_utils.dart';
import 'package:mykanji/data/models/addToCart/post_add_to_cart_resp.dart';
import 'package:mykanji/data/models/addToCartGetAll/get_add_to_cart_get_all_resp.dart';
import 'package:mykanji/data/models/authCategoryGetAll/get_auth_category_get_all_resp.dart';
import 'package:mykanji/data/models/authForgotPasswordVerifyPost/post_auth_forgot_password_verify_post_resp.dart';
import 'package:mykanji/data/models/authLoginPost/post_auth_login_post_resp.dart';
import 'package:mykanji/data/models/authServiceCategoryGetAll/get_auth_service_category_get_all_resp.dart';
import 'package:mykanji/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';
import 'package:mykanji/data/models/getAuthAccountGet65a23eb642a092a4e2eee163/get_get_auth_account_get65a23eb642a092a4e2eee163_resp.dart';
import 'package:mykanji/data/models/getAuthOrdersGetAll/get_get_auth_orders_get_all_resp.dart';
import 'package:mykanji/data/models/getAuthWishlistGetAll/get_get_auth_wishlist_get_all_resp.dart';
import 'package:mykanji/data/models/getProductsGetAll/get_get_products_get_all_resp.dart';
import 'package:mykanji/data/models/loginWithOtp/post_login_with_otp_resp.dart';
import 'package:mykanji/data/models/loginWithUserName/post_login_with_user_name_resp.dart';
import 'package:mykanji/data/models/registerOtpPost/post_register_otp_post_resp.dart';
import 'package:mykanji/data/models/registerUser/post_register_user_resp.dart';
import 'package:mykanji/data/models/resetPasswordApi/post_reset_password_api_resp.dart';

class ApiClient extends GetConnect {
  var url = "http://103.160.107.21:3000";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for http://103.160.107.21:3000/auth/service/category-get-all
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/service/category-get-all' endpoint
  /// with the provided headers and request data
  /// Returns a [GetAuthServiceCategoryGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetAuthServiceCategoryGetAllResp> authServiceCategoryGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/service/category-get-all',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetAuthServiceCategoryGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetAuthServiceCategoryGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/account-get/65a23eb642a092a4e2eee163
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/account-get/65a23eb642a092a4e2eee163' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp>
      getAuthAccountGet65a23eb642a092a4e2eee163(
          {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/account-get/65a23eb642a092a4e2eee163',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp.fromJson(
            response.body);
      } else {
        throw response.body != null
            ? GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp.fromJson(
                response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/orders/get-all
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/orders/get-all' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetAuthOrdersGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetAuthOrdersGetAllResp> getAuthOrdersGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/orders/get-all',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetAuthOrdersGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetGetAuthOrdersGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/wishlist/get-all
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/wishlist/get-all' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetAuthWishlistGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<List<GetGetAuthWishlistGetAllResp>> getAuthWishlistGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/wishlist/get-all',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return (response.body as List)
            .map((e) => GetGetAuthWishlistGetAllResp.fromJson(e))
            .toList();
      } else {
        throw response.hasError
            ? response.statusText!
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/products-getall
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/products-getall' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetProductsGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetProductsGetAllResp> getProductsGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/products-getall',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetProductsGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetGetProductsGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/add-to-cart-get-all
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/add-to-cart-get-all' endpoint
  /// with the provided headers and request data
  /// Returns a [GetAddToCartGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetAddToCartGetAllResp> addToCartGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/add-to-cart-get-all',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetAddToCartGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetAddToCartGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/wishlist
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/wishlist' endpoint
  /// with the provided headers and request data
  /// Returns a [PostAddToCartResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostAddToCartResp> addToCart({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/wishlist',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostAddToCartResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostAddToCartResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/category-getall
  ///
  /// Sends a GET request to the server's 'http://103.160.107.21:3000/auth/category-getall' endpoint
  /// with the provided headers and request data
  /// Returns a [GetAuthCategoryGetAllResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetAuthCategoryGetAllResp> authCategoryGetAll(
      {Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/auth/category-getall',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetAuthCategoryGetAllResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetAuthCategoryGetAllResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/resetPassword
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/resetPassword' endpoint
  /// with the provided headers and request data
  /// Returns a [PostResetPasswordApiResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostResetPasswordApiResp> resetPasswordApi({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/resetPassword',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostResetPasswordApiResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostResetPasswordApiResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/forgot-password/verify
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/forgot-password/verify' endpoint
  /// with the provided headers and request data
  /// Returns a [PostAuthForgotPasswordVerifyPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostAuthForgotPasswordVerifyPostResp> authForgotPasswordVerifyPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/forgot-password/verify',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostAuthForgotPasswordVerifyPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostAuthForgotPasswordVerifyPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/forgot-password
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/forgot-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostForgotPasswordPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostForgotPasswordPostResp> forgotPasswordPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/forgot-password',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostForgotPasswordPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostForgotPasswordPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/loginWithOtp
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/loginWithOtp' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginWithOtpResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginWithOtpResp> loginWithOtp({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/loginWithOtp',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginWithOtpResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginWithOtpResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/loginWithUserName
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/loginWithUserName' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginWithUserNameResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginWithUserNameResp> loginWithUserName({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/loginWithUserName',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginWithUserNameResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginWithUserNameResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/register/otp
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/register/otp' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterOtpPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterOtpPostResp> registerOtpPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register/otp',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterOtpPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterOtpPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/login
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostAuthLoginPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostAuthLoginPostResp> authLoginPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostAuthLoginPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostAuthLoginPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for http://103.160.107.21:3000/auth/register
  ///
  /// Sends a POST request to the server's 'http://103.160.107.21:3000/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterUserResp> registerUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
