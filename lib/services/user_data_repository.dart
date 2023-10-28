import 'package:cloud_firestore/cloud_firestore.dart';

import '../net_models/user/user_data_dto.dart';
import '../runtime_models/user/user_data.dart';

class UserDataRepository {
  UserDataRepository({required this.uid});

  final String uid;

  DocumentReference<Map<String, dynamic>> get userDocumentReference =>
      FirebaseFirestore.instance.collection('users').doc(uid);

  Stream<UserData?> get userDataStream => userDocumentReference
      .snapshots()
      .where((snapshot) => snapshot.exists)
      .map((snapshot) => snapshotToRuntimeObj(snapshot));

  // Future<DocumentSnapshot<Map<String, dynamic>>> get userDocumentSnapshot =>
  //     FirestoreCache.getDocument(userDocumentReference, source: Source.server);

  UserData? snapshotToRuntimeObj(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists ? UserDataDTO.fromJson(snapshot.data()!).toRuntimeObj(uid) : null;

  Future<void> pushUserData(UserData userData) async =>
      await userDocumentReference.set(userData.toDataTransferObj.toJson());

  //TODO: query for friends?

  // Future<void> pushNonRegisteredFriend(String name) async => await userDocumentReference
  //     .collection('nonRegisteredFriends')
  //     .add(PublicProfileDTO(name: name).toJson());
}
