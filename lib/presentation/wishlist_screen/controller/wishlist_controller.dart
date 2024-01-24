import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/presentation/wishlist_screen/models/wishlist_model.dart';
import 'package:mykanji/data/models/addToCart/post_add_to_cart_resp.dart';
import 'package:mykanji/data/apiClient/api_client.dart';
import 'package:mykanji/data/models/getAuthWishlistGetAll/get_get_auth_wishlist_get_all_resp.dart';
import '../models/productcard2_item_model.dart';

/// A controller class for the WishlistScreen.
///
/// This class manages the state of the WishlistScreen, including the
/// current wishlistModelObj
class WishlistController extends GetxController {
  Rx<WishlistModel> wishlistModelObj = WishlistModel().obs;

  PostAddToCartResp postAddToCartResp = PostAddToCartResp();

  List<GetGetAuthWishlistGetAllResp> getGetAuthWishlistGetAllResp =
      <GetGetAuthWishlistGetAllResp>[];

  /// Calls the http://103.160.107.21:3000/auth/wishlist API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callAddToCart(Map req) async {
    try {
      postAddToCartResp = await Get.find<ApiClient>().addToCart(headers: {
        'Content-type': 'application/json',
        'Authorization': Get.find<PrefUtils>().getToken().toString()
      }, requestData: req);
      _handleAddToCartSuccess();
    } on PostAddToCartResp catch (e) {
      postAddToCartResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleAddToCartSuccess() {}

  /// Calls the http://103.160.107.21:3000/auth/wishlist/get-all API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callGetAuthWishlistGetAll() async {
    getGetAuthWishlistGetAllResp =
        await Get.find<ApiClient>().getAuthWishlistGetAll(headers: {
      'Content-type': 'application/json',
      'Authorization': Get.find<PrefUtils>().getToken().toString(),
    });
    _handleGetAuthWishlistGetAllSuccess();
  }

  /// handles the success response for the API
  void _handleGetAuthWishlistGetAllSuccess() {
    var productcard2ItemModelList = <Productcard2ItemModel>[];
    if (getGetAuthWishlistGetAllResp.isNotEmpty) {
      for (var element in getGetAuthWishlistGetAllResp) {
        var productcard2ItemModel = Productcard2ItemModel();
        productcard2ItemModel.titleText?.value = element.productsName ?? '';
        productcard2ItemModel.subheadText?.value = element.productPrice.toString();
        productcard2ItemModelList.add(productcard2ItemModel);
      }
    }
    wishlistModelObj.value.productcard2ItemList.value =
        productcard2ItemModelList;
  }

  /// calls the [http://103.160.107.21:3000/auth/wishlist/get-all] API
  ///
  /// It has [GetGetAuthWishlistGetAllReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onGetAuthWishlistGetAllSuccess()` function.
  /// If the call fails, the function calls the `_onGetAuthWishlistGetAllError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callGetAuthWishlistGetAll();
      _onGetAuthWishlistGetAllSuccess();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      _onGetAuthWishlistGetAllError();
    }
  }

  void _onGetAuthWishlistGetAllSuccess() {}
  void _onGetAuthWishlistGetAllError() {}
}
