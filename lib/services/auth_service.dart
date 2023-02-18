import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:my_football_career/authentication/login/view/login_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/models/user_model.dart';
import 'package:my_football_career/player/view/player_home_screen.dart';
import 'package:my_football_career/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_football_career/utils/utils.dart';

import '../club/view/club_home_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;
  FirestoreService firestoreService = FirestoreService();

  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }

    return User(
      user.uid,
      user.email,
    );
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  // getting current user id

  getCurrentUserId() {
    return _firebaseAuth.currentUser?.uid;
  }

  getCurrentUseremail() {
    return _firebaseAuth.currentUser!.email;
  }

  // this is for signin with email and password
  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
    context,
  ) async {
    try {
      final credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        firestoreService.route(context);
        // Navigator.pushNamed(context, "/playerhomescreen");
      });
      return _userFromFirebase(credential.user);
    } catch (e) {
      Utils().toastMessage(e.toString());
    }
  }

  // this is for create user with email and password
  Future<User?> createUserWithEmailAndPassword(
      String email, String password, context) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.pushNamedAndRemoveUntil(
          context, '/typescreen', (route) => false);
      return _userFromFirebase(credential.user);
    } catch (e) {
      Utils().toastMessage(e.toString());
    }
  }

  Future authRole(id) async {}

  // this is for signout user

  Future<void> signOut(BuildContext context) async {
    await _firebaseAuth.signOut().then((value) {
      print("why its happen");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }
}
