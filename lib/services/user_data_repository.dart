import 'package:cloud_firestore/cloud_firestore.dart';

import '../net_models/user/user_data_dto.dart';
import '../runtime_models/user/user_data.dart';

class UserDataRepository {
  final String uid;

  UserDataRepository({required this.uid});

  Stream<UserData?> get userDataStream => userDocumentReference
      .snapshots()
      .where((snapshot) => snapshot.exists)
      .map((snapshot) => snapshotToRuntimeObj(snapshot));

  DocumentReference<Map<String, dynamic>> get userDocumentReference =>
      FirebaseFirestore.instance.collection('users').doc(uid);

  Future pushUserData(UserData userData) async =>
      userDocumentReference.set(userData.toDataTransferObj.toJson());

  // Future<DocumentSnapshot<Map<String, dynamic>>> get userDocumentSnapshot =>
  //     FirestoreCache.getDocument(userDocumentReference, source: Source.server);

  UserData? snapshotToRuntimeObj(
          DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists
          ? UserDataDTO.fromJson(snapshot.data()!).toRuntimeObj(uid)
          : null;

  //TODO: query for friends?
}
