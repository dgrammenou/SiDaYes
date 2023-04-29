import 'package:firebase_auth/firebase_auth.dart';
import 'package:sidayes/database.dart';
import 'package:sidayes/user.dart';

class auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  appuser _userfromfirebase(User? user) {
    if (user != null) {
      return appuser(uid: user.uid);
    } else {
      return appuser(uid: 'wronguser');
    }
  }

  //sign up
  Future Signingup(String username, String password) async {
    try {
      final UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: username, password: password);
      final User? user = result.user;
      if (user != null) {
        await Databaseservice(uid: user.uid)
            .updaterecipes('test', 'test', 'test');
      }
      return _userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
    ;
  }

  //sign in
  Future Signingin(String username, String password) async {
    try {
      final UserCredential result = await _auth.signInWithEmailAndPassword(
          email: username, password: password);
      final User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
    ;
  }

  Future changepassword(String email, String oldp, String newp) async {
    try {
      final UserCredential result =
          await _auth.signInWithEmailAndPassword(email: email, password: oldp);
      final User? user = result.user;
      if (user != null) {
        user.updatePassword(newp);
      }
    } catch (e) {
      return e;
    }
    ;
  }

  Future forgotpassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      return e;
    }
    ;
  }

  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
