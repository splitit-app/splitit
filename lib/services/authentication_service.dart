import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_bs/runtime_models/user/private_profile.dart';
import 'package:project_bs/runtime_models/user/public_profile.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
import 'package:project_bs/services/user_data_repository.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> get hahaha => _firebaseAuth.authStateChanges();

  // ignore: non_constant_identifier_names
  Future<UserData?> createUserWith_EmailAndPassword(
      String email, String password) async {
    try {
      User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (user == null) return null;

      //Construct new user
      return UserData(
        uid: user.uid,
        publicProfile: PublicProfile(name: 'New User'),
        privateProfile: PrivateProfile(themeData: ThemeData.light()),
        friends: List.empty(),
      );

      //TODO: save new UserData to database
      //await DatabaseService(uid: user!.uid).updateUserData(Brew());
    } catch (e) {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future<UserData?> signInWith_EmailAndPassword(
      String email, String password) async {
    try {
      User? user = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (user == null) return null;

      return UserDataRepository(uid: user.uid).currentUserData;
    } catch (e) {
      //print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}
