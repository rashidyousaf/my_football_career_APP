import 'package:my_football_career/consts/consts.dart';

class LoginController extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;
  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}
