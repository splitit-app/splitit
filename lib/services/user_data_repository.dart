import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import '../net_models/user/user_data_dto.dart';
import '../runtime_models/user/user_data.dart';

class UserDataRepository {
  final Locator read;

  UserDataRepository({required this.read});
  String? get uid => read<User?>()?.uid;

  Future<UserData> get userData async => userDocumentReference.get().then(
      (snapshot) => UserData.fromDataTransferObj(UserDataDTO.fromJson(snapshot.data()!), uid!));

  Stream<UserData?> get userDataStream => userDocumentReference
      .snapshots()
      .where((snapshot) => snapshot.exists)
      .map((snapshot) => snapshotToRuntimeObj(snapshot));

  DocumentReference<Map<String, dynamic>> get userDocumentReference =>
      FirebaseFirestore.instance.collection('users').doc(uid);

  Future<void> pushUserData(UserData userData) async =>
      await userDocumentReference.set(userData.toDataTransferObj.toJson());

  // Future<DocumentSnapshot<Map<String, dynamic>>> get userDocumentSnapshot =>
  //     FirestoreCache.getDocument(userDocumentReference, source: Source.server);

//TODO: redundant exists check
  UserData? snapshotToRuntimeObj(DocumentSnapshot<Map<String, dynamic>> snapshot) => uid == null
      ? null
      : snapshot.exists
          ? UserData.fromDataTransferObj(UserDataDTO.fromJson(snapshot.data()!), uid!)
          : null;

  //TODO: query for friends?

  // Future<void> pushNonRegisteredFriend(String name) async => await userDocumentReference
  //     .collection('nonRegisteredFriends')
  //     .add(PublicProfileDTO(name: name).toJson());
}
