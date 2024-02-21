class AppLink {
//
  static const String server = "https://exfai.com/Hamza";
  // static const String test = "$server/test.php";

  static const String notification = "$server/notification.php";
  static const String imageststatic = "$server/upload";

  //========================== Image ============================//

  static const String imagestCategories = "$server/upload/categories";
  // static const String imagestItems = "$imageststatic/items";
  static const String imagesAddBook = "$imageststatic/book";
// =============================================================

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";

// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";

// Home

  static const String homepage = "$server/home.php";

// Categories

  static const String categories = "$server/admin/categories.php";
  static const String categoriesAdd = "$server/admin/categories/add.php";
  static const String categoriesView = "$server/admin/categories/view.php";
  static const String categoriesEdit = "$server/admin/categories/edit.php";
  static const String categoriesDelete = "$server/admin/categories/delete.php";

// addbook
  static const String addbook = "$server/addbook/addbook.php";
  static const String searchAddbook = "$server/addbook/search.php";
  static const String addbookAdd = "$server/addbook/add.php";
  static const String addbookView = "$server/addbook/view.php";
  static const String addbookDelete = "$server/addbook/delete.php";
  static const String addbookEdit = "$server/addbook/edit.php";
  static const String addbookDetails = "$server/addbook/details.php";
  static const String addbookRating = "$server/addbook/rating.php";
  static const String addbookRatingView = "$server/addbook/ratingview.php";
  static const String addbookRatingDelete = "$server/addbook/ratingdelete.php";

// Favorite

  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deletefromfavroite =
      "$server/favorite/deletefromfavroite.php";

  // Cart
  static const String cartview = "$server/cart/view.php";
  static const String cartadd = "$server/cart/add.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String cartgetcountaddbook = "$server/cart/getcountaddbook.php";

  // Address

  static const String addressView = "$server/address/view.php";
  static const String addressAdd = "$server/address/add.php";
  static const String addressEdit = "$server/address/edit.php";
  static const String addressDelete = "$server/address/delete.php";

  // Coupon

  static const String checkcoupon = "$server/coupon/checkcoupon.php";

  // Checkout

  static const String checkout = "$server/orders/checkout.php";

  static const String pendingorders = "$server/orders/pending.php";
  static const String ordersarchive = "$server/orders/archive.php";
  static const String ordersdetails = "$server/orders/details.php";
  static const String ordersdelete = "$server/orders/delete.php";
  static const String offers = "$server/offers.php";
  static const String rating = "$server/rating.php";
}
