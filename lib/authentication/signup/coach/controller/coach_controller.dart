import 'package:my_football_career/authentication/signup/coach/model/coach_model.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/auth_service.dart';
import 'package:my_football_career/services/firestore_service.dart';

import '../../../../models/user_role_model.dart';

class CoachController extends ChangeNotifier {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController yourRoleController = TextEditingController();
  final TextEditingController yourLicenceController = TextEditingController();
  final TextEditingController actualClubController = TextEditingController();
  final TextEditingController clubFlagController = TextEditingController();
  final TextEditingController availableTransferController =
      TextEditingController();
  final TextEditingController transferCoastsController =
      TextEditingController();
  final TextEditingController yourTransfermarktUrlController =
      TextEditingController();
  final TextEditingController changeYourcvController = TextEditingController();
  final TextEditingController chanrgeSomePhotosController =
      TextEditingController();
  final TextEditingController chargeSomePhotos2Controller =
      TextEditingController();
  final TextEditingController youractualCityLocationController =
      TextEditingController();
  final TextEditingController yourPhoneNumberController =
      TextEditingController();
  final TextEditingController phoneCodeController = TextEditingController();
  final TextEditingController validYourIdendityController =
      TextEditingController();
  final TextEditingController validYourIdendity1Controller =
      TextEditingController();

  FirestoreService firestoreService = FirestoreService();
  AuthService authService = AuthService();

  saveCoachAccount() async {
    UserRoleModel userRoleModel =
        UserRoleModel(id: authService.getCurrentUserId(), role: "coachs");
    await firestoreService.saveUserInfo(userRoleModel);

    CoachModel coachModel = CoachModel(
      id: authService.getCurrentUserId(),
      email: authService.getCurrentUseremail(),
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      dateOfBirth: dateOfBirthController.text,
      date: dateController.text,
      nationality: nationalityController.text,
      gender: genderController.text,
      yourRole: yourRoleController.text,
      yourLicence: yourLicenceController.text,
      actualClub: actualClubController.text,
      clubFlag: clubFlagController.text,
      availableTransfer: availableTransferController.text,
      transferCoasts: transferCoastsController.text,
      yourTransfermarktUrl: yourTransfermarktUrlController.text,
      changeYourcv: changeYourcvController.text,
      chanrgeSomePhotos: chanrgeSomePhotosController.text,
      chargeSomePhotos2: chargeSomePhotos2Controller.text,
      youractualCityLocation: youractualCityLocationController.text,
      yourPhoneNumber: yourPhoneNumberController.text,
      phoneCode: phoneCodeController.text,
      validYourIdendity1: validYourIdendity1Controller.text,
      validYourIdendity: validYourIdendityController.text,
    );
    await firestoreService.saveCoachInfor(coachModel);
  }
}
