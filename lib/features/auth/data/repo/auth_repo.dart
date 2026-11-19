import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static Future? signup({required String email, required String password}) async {
    try {
      final response = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  static Future? signin({required String email, required String password}) async {
    try {
      final response = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
