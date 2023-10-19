import 'package:firebase_auth/firebase_auth.dart';


class FirebaseHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;

  get user => auth.currentUser;

  Future<String?> register(
      {required String useremail, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: useremail, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> login({required email, required password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
