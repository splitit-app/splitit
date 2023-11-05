import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> get userAuthState => _firebaseAuth.authStateChanges();

  // ignore: non_constant_identifier_names
  Future<bool> isValid_Email(String email) async {
    try {
      List<String> signInMethods = await _firebaseAuth.fetchSignInMethodsForEmail(email);
      return signInMethods.isEmpty;
    } catch (e) {
      return false;
    }
  }

  // ignore: non_constant_identifier_names
  Future<User?> createUserWith_EmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      return (await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password))
          .user;
    } catch (e) {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future signInWith_EmailAndPassword(String email, String password) async {
    try {
      User? user =
          (await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password)).user;

      if (user == null) return null;

      //return UserDataRepository(uid: user.uid).currentUserData;
    } catch (e) {
      //print(e.toString());
      //return null;
    }
  }

  Future signOut() {
    try {
      return _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
