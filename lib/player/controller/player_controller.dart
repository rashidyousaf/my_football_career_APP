import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/utils/utils.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../services/firestore_service.dart';

class PlayerController extends ChangeNotifier {
  FirestoreService firestoreService = FirestoreService();
  luanchUrl(String url) async {
    final websiteurl = Uri.parse('https://youtube.com/');

    String websitelink = "https://${url.trim()}";
    if (await canLaunchUrlString(websitelink)) {
      launchUrlString(websitelink);
    } else {
      Utils().toastMessage("You don't provide a valid link");
    }
  }
  // PlayerModel? _user;
  // get user => _user;

  // Future<void> getPlayer() async {
  //   notifyListeners();
  //   try {
  //     final user = await firestoreService.getPlayerInfo();
  //     _user = user;
  //     print('player firstname:${user.firstName} ');
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
