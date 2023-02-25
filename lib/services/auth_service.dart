import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_football_career/authentication/login/view/login_screen.dart';
import 'package:my_football_career/consts/consts.dart';
import 'package:my_football_career/models/user_model.dart';
import 'package:my_football_career/services/firestore_service.dart';
import 'package:my_football_career/utils/utils.dart';

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

  // this section for signin with google

  signInWithGoogle(context) async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    auth.AuthCredential credential = auth.GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    auth.UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(credential);

    if (userCredential.additionalUserInfo!.isNewUser) {
      Navigator.pushNamed(context, '/typescreen');
    } else {
      firestoreService.route(context);
    }
  }

  // userCheckfor() {
  //   StreamBuilder(
  //       stream: _firebaseAuth.authStateChanges(),
  //       builder: (BuildContext context, AsyncSnapshot snapshot) {
  //         if (snapshot.hasError) {
  //           Utils().toastMessage(snapshot.error.toString());
  //         }
  //         if (snapshot.connectionState == ConnectionState.active) {
  //           if (snapshot.data == null) {
  //             Utils().toastMessage("user profile");
  //           } else {
  //             Utils().toastMessage("user profile");
  //             // return firestoreService.route(context);
  //           }
  //         }
  //         return Text("");
  //       });
  //   print('hi');
  // }

  // this section for recover password
  recoverPassword(String email, context) {
    final credential =
        _firebaseAuth.sendPasswordResetEmail(email: email).then((value) {
      Utils().toastMessage(
          'We have send you email to recover passwordm please check email');

      Navigator.pushNamed(context, '/loginscreen');
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }

  // this is for signout user

  Future<void> signOut(BuildContext context) async {
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut().then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }
}
