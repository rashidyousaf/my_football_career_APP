import 'package:my_football_career/consts/consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;
  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }

// this for obscureText
  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void togglePasswordVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  // this for remember me password and email
  String _email = '';
  String _password = '';
  bool _rememberMe = false;

  String get email => _email;
  String get password => _password;

  bool get rememberMe => _rememberMe;
  set rememberMe(bool value) {
    _rememberMe = value;

    notifyListeners();
  }

  Future<void> init() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String email = prefs.getString('email') ?? '';
    final String password = prefs.getString('password') ?? '';
    final bool rememberMe = prefs.getBool('rememberMe') ?? false;
    if (email.isNotEmpty && password.isNotEmpty && rememberMe == true) {
      _email = email;
      _password = password;
      _rememberMe = rememberMe;
    }
  }

  Future<void> saveCredentials(String email, String password) async {
    _email = email;
    _password = password;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_rememberMe) {
      await prefs.setString('email', email);
      await prefs.setString('password', password);
      await prefs.setBool('rememberMe', true);
    } else {
      await prefs.remove('email');
      await prefs.remove('password');
      await prefs.remove('rememberMe');
    }
    notifyListeners();
    print(rememberMe);
  }

  Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String email = prefs.getString('email') as String;
    final String password = prefs.getString('password') as String;
    return email != null &&
        email.isNotEmpty &&
        password != null &&
        password.isNotEmpty;
  }

  void setRememberMe(bool value) {
    _rememberMe = value;

    notifyListeners();
  }

  // Future<void> logout() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.remove('email');
  //   await prefs.remove('password');
  //   await prefs.remove('rememberMe');
  //   _email = '';
  //   _password = '';
  //   _rememberMe = false;
  //   notifyListeners();
  // }
}
