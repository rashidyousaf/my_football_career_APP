import 'package:my_football_career/authentication/signup/club/model/club_model.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/services/firestore_service.dart';

import '../../../../models/user_role_model.dart';

class ClubController extends ChangeNotifier {
  final TextEditingController nameYourClubController = TextEditingController();
  final TextEditingController clubFlagController = TextEditingController();
  final TextEditingController countryNameController = TextEditingController();
  final TextEditingController countryFlagController = TextEditingController();
  final TextEditingController adressYourClubController =
      TextEditingController();
  final TextEditingController yourRoleinClubController =
      TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController validYourIdendityController =
      TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController yourActualLocationController =
      TextEditingController();

  final TextEditingController yourPhoneNumberController =
      TextEditingController();
  final TextEditingController phoneCodeController = TextEditingController();
  final TextEditingController transfermarktUrlController =
      TextEditingController();
  final TextEditingController validYourIdendity1Controller =
      TextEditingController();

  FirestoreService firestoreService = FirestoreService();
  AuthService authService = AuthService();
  saveClubAccount() async {
    UserRoleModel userRoleModel =
        UserRoleModel(id: authService.getCurrentUserId(), role: "clubs");
    await firestoreService.saveUserInfo(userRoleModel);

    ClubModel clubModel = ClubModel(
      id: authService.getCurrentUserId(),
      email: authService.getCurrentUseremail(),
      nameYourClub: nameYourClubController.text,
      clubFlag: clubFlagController.text,
      countryName: countryNameController.text,
      countryFlag: countryFlagController.text,
      adressYourClub: adressYourClubController.text,
      yourRoleinClub: yourRoleinClubController.text,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      dateOfBirth: dateOfBirthController.text,
      yourActualLocation: yourActualLocationController.text,
      yourPhoneNumber: yourPhoneNumberController.text,
      phoneCode: phoneCodeController.text,
      transfermarktUrl: transfermarktUrlController.text,
      validYourIdendity: validYourIdendityController.text,
      validYourIdendity1: validYourIdendity1Controller.text,
    );
    await firestoreService.saveClubInfo(clubModel);
  }
}
