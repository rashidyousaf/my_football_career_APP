import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/authentication/signup/player/model/player_model.dart';
import 'package:my_football_career/models/user_role_model.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/services/firestore_service.dart';

class PlayerAuthController extends ChangeNotifier {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController yourMainPositionController =
      TextEditingController();
  final TextEditingController yourSecondPositionController =
      TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController yourStrongFootController =
      TextEditingController();
  final TextEditingController actualClubController = TextEditingController();
  final TextEditingController clubFlagController = TextEditingController();
  final TextEditingController underContractUntilController =
      TextEditingController();
  final TextEditingController availableForTransferController =
      TextEditingController();
  final TextEditingController transferCoastsController =
      TextEditingController();
  final TextEditingController jerseyNumberController = TextEditingController();
  final TextEditingController yourTransfermarktUrlController =
      TextEditingController();
  final TextEditingController yourFupaUrl = TextEditingController();
  final TextEditingController yourSeccerwayUrlController =
      TextEditingController();
  final TextEditingController cvResumeController = TextEditingController();
  final TextEditingController yourVideosUrl1Controller =
      TextEditingController();
  final TextEditingController yourVideosUrl2Controller =
      TextEditingController();
  final TextEditingController yourVideosUrl3Controller =
      TextEditingController();
  final TextEditingController youractualCityLocationController =
      TextEditingController();
  final TextEditingController yourPhoneNumberController =
      TextEditingController();
  final TextEditingController phoneCodeController = TextEditingController();
  final TextEditingController validYourIdendityController =
      TextEditingController();
  final TextEditingController validYourIdendityController1 =
      TextEditingController();

  FirestoreService firestoreService = FirestoreService();
  AuthService authService = AuthService();

  savePlyarAccount() async {
    UserRoleModel userRoleModel =
        UserRoleModel(id: authService.getCurrentUserId(), role: "players");
    await firestoreService.saveUserInfo(userRoleModel);
    PlayerModel playerModel = PlayerModel(
        id: authService.getCurrentUserId(),
        email: authService.getCurrentUseremail(),
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        dateOfBirth: dateOfBirthController.text,
        date: dateController.text,
        nationality: nationalityController.text,
        gender: genderController.text,
        yourMainPosition: yourMainPositionController.text,
        yourSecondPosition: yourSecondPositionController.text,
        height: heightController.text,
        weight: weightController.text,
        yourStrongFoot: yourStrongFootController.text,
        actualClub: actualClubController.text,
        clubFlag: clubFlagController.text,
        underContractUntil: underContractUntilController.text,
        availableForTransfer: availableForTransferController.text,
        transferCoasts: transferCoastsController.text,
        jerseyNumber: jerseyNumberController.text,
        yourTransfermarktUrl: yourMainPositionController.text,
        yourFupaUrl: yourFupaUrl.text,
        yourSeccerwayUrl: yourMainPositionController.text,
        cvResume: cvResumeController.text,
        yourVideosUrl1: yourVideosUrl1Controller.text,
        yourVideosUrl2: yourVideosUrl2Controller.text,
        yourVideosUrl3: yourVideosUrl3Controller.text,
        youractualCityLocation: youractualCityLocationController.text,
        phoneCode: phoneCodeController.text,
        yourPhoneNumber: yourPhoneNumberController.text,
        validYourIdendity: validYourIdendityController.text,
        validYourIdendity1: validYourIdendityController1.text);
    await firestoreService.savePlayerInfo(playerModel);
  }
}
