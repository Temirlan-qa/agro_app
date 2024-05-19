class EndPoints {
  // Auth
  static const signIn = '/account-management/authenticate';
  static const signUp = '/account-management/register';
  static const refreshToken = '/auth/refresh';
  static const logOut = '/account-management/logout';
  static const countryList = '/account-management/all/country/code';

  // Products
  static const String getAllProducts = '/account-management/all';
  static const String getAllUserProducts = '/ads/user';
  static String getProduct(String id) => '/account-management/ad/$id/';
  static const String createProduct = '/ads/create';
  static String updateProduct(String id) => '/ads/update/$id/';
  static String deleteProduct(String id) => '/ads/delete/$id/';

  static const String getAllFavoriteProducts = '/ads/allFavorite';
  static String addToFavorite(String id) => '/ads/addFavorite?adId=$id';
  static String removeFavorite(String id) => '/ads/removeFavorite?adId=$id';

  static String searchProducts = '/account-management/filter';

  static String getProductSubCategory(String category) =>
      '/account-management/subcategories?category=$category';

  static String getFaqs = '/account-management/faq';

  //User
  static const getUserInfo = '/user/profile';
  static const updateUserInfo = '/user/update';
  //static const resetUserPassword = '/user/resetPassword';
  //static const updateUserPassword = '/user/newPassword';
  static const updateUserPassword = '/user/changePassword';

  //Country
  static const getAllCountries = '/account-management/getAllCountries';
  static const getCitiesByCountry = '/account-management/getCitiesByCountry';
}
