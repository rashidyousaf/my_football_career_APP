import 'package:my_football_career/consts/consts.dart';

class NavbarProvider with ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void updateIndex(int index) {
    _index = index;
    notifyListeners();
  }
}
