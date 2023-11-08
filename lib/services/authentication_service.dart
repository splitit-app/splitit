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

    // } catch (e) {
    //   print(e.toString());
    //   //return null;
    // }

    //? refer: https://stackoverflow.com/questions/67617502/what-are-the-error-codes-for-flutter-firebase-auth-exception
    // ? refer: https://stackoverflow.com/questions/37859582/how-to-catch-a-firebase-auth-specific-exceptions/38244409#38244409
    } on FirebaseAuthException catch (e) {
      // print(e.code);
      // if (e.code == "INVALID_LOGIN_CREDENTIALS"){
      //   print("From: Auth_Serv: Email or Password incorrect!");
      // }
      // else if (e.code == "invalid-email"){
      //   print("From: Auth_Serv: Invalid Email!");
      // }
      // else{
      //   print("From: Auth_Serv: Error Occured!");
      // }
      return e.code;
    }
    return "good";
  }

  Future signOut() {
    try {
      return _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
