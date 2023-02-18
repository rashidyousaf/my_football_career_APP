import 'package:my_football_career/authentication/signup/agency/model/agency_model.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/services/firestore_service.dart';
import '../../../../models/user_role_model.dart';
import '../../../../services/auth_service.dart';

class AgencyController extends ChangeNotifier {
  final TextEditingController nameYourAgencyController =
      TextEditingController();
  final TextEditingController countryNameController = TextEditingController();
  final TextEditingController countryFlagController = TextEditingController();
  final TextEditingController adressYourAgencyController =
      TextEditingController();
  final TextEditingController yourRoleinAgencyController =
      TextEditingController();
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController youActualLocationController =
      TextEditingController();
  final TextEditingController yourPhoneNumberController =
      TextEditingController();
  final TextEditingController phoneCodeController = TextEditingController();
  final TextEditingController transfermarktUrlController =
      TextEditingController();
  final TextEditingController validYourIdendityController =
      TextEditingController();
  final TextEditingController validYourIdendity1Controller =
      TextEditingController();

  FirestoreService firestoreService = FirestoreService();
  AuthService authService = AuthService();
  saveAgencyAccount() async {
    UserRoleModel userRoleModel =
        UserRoleModel(id: authService.getCurrentUserId(), role: "agencys");
    await firestoreService.saveUserInfo(userRoleModel);

    AgencyModel agencyModel = AgencyModel(
      id: authService.getCurrentUserId(),
      email: authService.getCurrentUseremail(),
      nameYourAgency: nameYourAgencyController.text,
      countryName: countryNameController.text,
      countryFlag: countryFlagController.text,
      adressYourAgency: adressYourAgencyController.text,
      yourRoleinAgency: yourRoleinAgencyController.text,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      dateOfBirth: dateOfBirthController.text,
      youActualLocation: youActualLocationController.text,
      yourPhoneNumber: yourPhoneNumberController.text,
      phoneCode: phoneCodeController.text,
      transfermarktUrl: transfermarktUrlController.text,
      validYourIdendity: validYourIdendityController.text,
      validYourIdendity1: validYourIdendity1Controller.text,
    );
    await firestoreService.saveAgencyInfo(agencyModel);
  }
}
