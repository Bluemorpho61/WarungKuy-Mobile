class API{
  //Address API
  static const String urlIP ="http://192.168.1.25";
  static const String urlAPI ="$urlIP/SI-WEB-SMT3/API/";

  //API Access Method
  static const String loginApi ="$urlAPI/users.php?method=login";
  static const String getWarung ="$urlAPI/warung.php?method=getAll";

  static const String getTopRated ="$urlAPI/home.php?method=getWarung";
  static const String openUrlDaftar ="$urlIP/SI-WEB-SMT3/View/daftar.php";
}