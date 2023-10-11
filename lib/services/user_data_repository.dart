import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_bs/net_models/user/user_data_dto.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';

class UserDataRepository {
  UserDataRepository({required this.uid});

  final String uid;
  DocumentReference<Map<String, dynamic>> get _userDocument =>
      FirebaseFirestore.instance.collection('users').doc(uid);
  //final _userCollection = FirebaseFirestore.instance.collection('users');

  Stream<UserData?> get userDataStream => _userDocument
      .snapshots()
      .where((snapshot) => snapshot.exists)
      .map((snapshot) =>
          UserDataDTO.fromJson(snapshot.data()!).toRuntimeObj(uid));

  Future<UserData?> get currentUserData async =>
      _userDocument.get().then((snapshot) => snapshot.exists
          ? UserDataDTO.fromJson(snapshot.data()!).toRuntimeObj(uid)
          : null);

  Future pushUserData(UserData userData) async =>
      _userDocument.set(userData.toDataTransferObj.toJson());

  //TODO: query for friends?
}
