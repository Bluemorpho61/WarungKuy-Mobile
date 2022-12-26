class API {
  //Address API
  static const String urlIP = "http://192.168.1.7";
  static const String urlAPI = "$urlIP/SI-WEB-SMT3/API/";

  //API Access Method
  static const String loginApi = "$urlAPI/users.php?method=login";
  static const String getWarung = "$urlAPI/warung.php?method=getAll";
  static const String getTopRated = "$urlAPI/home.php?method=getWarung";
  static const String openUrlDaftar = "$urlIP/SI-WEB-SMT3/View/daftar.php";
  static const String getUserProfile = "$urlAPI/home.php?method=getUserProf";
  static const String getFavoritDataUser = "$urlAPI/home.php?method=getFav";

//API Untuk CRUD
  static const String updateProfile ="$urlAPI/updateProfile.php?method=updateProfile";
  static const String openUrlUpdateProfile = "$urlIP/SI-WEB-SMT3/View/akun.php";

  //API untuk search warung
  static const String searchWarung = "$urlAPI/searchsuggest.php";

  //API untuk fetch asset
  static const String getGambarWarung = "$urlIP/SI-WEB-SMT3/Assets/img/";
}
