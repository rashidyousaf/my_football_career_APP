import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_football_career/agency/view/agency_home_screen.dart';
import 'package:my_football_career/authentication/signup/agency/model/agency_model.dart';
import 'package:my_football_career/authentication/signup/club/model/club_model.dart';
import 'package:my_football_career/authentication/signup/coach/model/coach_model.dart';
import 'package:my_football_career/authentication/signup/player/model/player_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_football_career/club/view/club_home_screen.dart';
import 'package:my_football_career/coach/view/coach_home_screen.dart';
import 'package:my_football_career/models/user_role_model.dart';
import 'package:my_football_career/player/view/player_home_screen.dart';
import 'package:my_football_career/utils/utils.dart';

import '../consts/consts.dart';

class FirestoreService {
  final _firebaseAuth = FirebaseAuth.instance;

  // user role and id data

  CollectionReference users = FirebaseFirestore.instance.collection("users");

// player data
  CollectionReference players =
      FirebaseFirestore.instance.collection('players');

// coach data
  CollectionReference coachs = FirebaseFirestore.instance.collection('coachs');

// club data
  CollectionReference clubs = FirebaseFirestore.instance.collection('clubs');

//angency data

  CollectionReference agencys =
      FirebaseFirestore.instance.collection('agencys');

// add player information

  Future<void> savePlayerInfo(PlayerModel playerModel) async {
    await players.doc(playerModel.id).set(playerModel.toJson());
  }

  //add coachs informations

  Future<void> saveCoachInfor(CoachModel coachModel) async {
    await coachs.doc(coachModel.id).set(coachModel.toJson());
  }

// add club informations
  Future<void> saveClubInfo(ClubModel clubModel) async {
    await clubs.doc(clubModel.id).set(clubModel.toJson());
  }

  // add agency information
  Future<void> saveAgencyInfo(AgencyModel agencyModel) async {
    await agencys.doc(agencyModel.id).set(agencyModel.toJson());
  }

  // add user id and role

  Future<void> saveUserInfo(UserRoleModel userRoleModel) async {
    await users.doc(userRoleModel.id).set(userRoleModel.toJson());
  }

  // get player data
  Future<PlayerModel> getPlayerInfo() async {
    DocumentSnapshot doc =
        await players.doc(_firebaseAuth.currentUser!.uid).get();
    PlayerModel playerModel =
        PlayerModel.fromJson(doc.data() as Map<String, dynamic>);

    return playerModel;
  }

  // get coach data

  Future<CoachModel> getCoachInfo() async {
    DocumentSnapshot doc =
        await coachs.doc(_firebaseAuth.currentUser!.uid).get();
    CoachModel coachModel =
        CoachModel.fromJson(doc.data() as Map<String, dynamic>);

    return coachModel;
  }

// get club data

  Future<ClubModel> getClubInfo() async {
    DocumentSnapshot doc =
        await clubs.doc(_firebaseAuth.currentUser!.uid).get();
    ClubModel clubhModel =
        ClubModel.fromJson(doc.data() as Map<String, dynamic>);
    return clubhModel;
  }

  // get agency data
  Future<AgencyModel> getAgencyInfo() async {
    DocumentSnapshot doc =
        await agencys.doc(_firebaseAuth.currentUser!.uid).get();
    AgencyModel agencyModel =
        AgencyModel.fromJson(doc.data() as Map<String, dynamic>);

    return agencyModel;
  }

  // get rolebase data

  route(context) {
    var kk = users
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('role') == "players") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PlayerHomeScreen()),
          );
          getPlayerInfo();
        } else if (documentSnapshot.get('role') == "coachs") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CoachHomeScreen()),
          );
          getCoachInfo();
        } else if (documentSnapshot.get('role') == "clubs") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ClubHomeScreen()),
          );
          getClubInfo();
        } else if (documentSnapshot.get('role') == "agencys") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AgencyHomeScreen()),
          );
          getAgencyInfo();
        }
      } else {
        Utils().toastMessage('Data does not exist');
      }
    });
  }

  // this fuction for checking user is login or not

  void isLogin(BuildContext context) {
    final user = _firebaseAuth.currentUser;

    if (user != null) {
      route(context);
    } else {
      Navigator.pushNamed(context, '/homescreen');
    }
  }
}
