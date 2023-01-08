class API {
  //Address API
  static const String urlIP = "http://warungkuy.wstif3e.id";
  static const String urlAPI = "$urlIP/API/";

  //API Access Method
  static const String loginApi = "$urlAPI/users.php?method=login";
  static const String getWarung = "$urlAPI/warung.php?method=getAll";
  static const String getTopRated = "$urlAPI/home.php?method=getWarung";
  static const String openUrlDaftar = "$urlIP/View/daftar.php";
  static const String getUserProfile = "$urlAPI/home.php?method=getUserProf";
  static const String getFavoritDataUser = "$urlAPI/home.php?method=getFav";
  static const String getWarungForSearch =
      "$urlAPI/searchsuggest.php?method=getSearchData";
  static const String getDetailWarung = "$urlAPI/fetchdetailinfo.php?method=getDetail";

//API Untuk CRUD
  static const String updateProfile = "$urlAPI/users.php?method=update.php";
  static const String openUrlUpdateProfile = "$urlIP/View/akun.php";

  //API untuk search warung
  static const String searchWarung = "$urlAPI/searchsuggest.php";

  //API untuk fetch asset
  static const String getGambarWarung = "$urlIP/Assets/img/";
}
