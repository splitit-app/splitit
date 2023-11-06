import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firestore_cache/firestore_cache.dart';
import 'package:provider/provider.dart';

import '../net_models/bill/bill_data_dto.dart';
import '../runtime_models/bill/bill_data.dart';
import '../runtime_models/user/public_profile.dart';

class BillDataRepository {
  final Locator read;

  final _billCollection = FirebaseFirestore.instance.collection('bills');
  BillDataRepository({required this.read});
  Stream<List<BillData>?> get billDataStream {
    try {
      return _billCollection
          .where('payerUid', isEqualTo: uid)
          .orderBy('dateTime', descending: true)
          //.orderBy('resolved')
          .snapshots()
          .map((snapshot) => snapshot.docs.map((e) => snapshotToRuntimeObj(e)).nonNulls.toList());
    } catch (e) {
      throw Exception(e);
    }
  }

  @Deprecated('Reserve for future caching implementation')
  Future<QuerySnapshot<Map<String, dynamic>>> get billDocumentSnapshots =>
      FirestoreCache.getDocuments(
        query: _billCollection,
        cacheDocRef: FirebaseFirestore.instance.doc('cacheTimestamps/bills'),
        firestoreCacheField: 'lastUpdatedSession',
      );

  String? get uid => read<User?>()?.uid;

  Future<String> createBill({
    //required String uid,
    required DateTime dateTime,
    required String name,
    required double totalSpent,
    required PublicProfile payer,
  }) async {
    return _billCollection
        .add(BillDataDTO(
          dateTime: dateTime,
          name: name,
          totalSpent: 0,
          payerUid: payer.uid,
          //itemGroups: List.empty(),
          //taxModule: BillModule_Tax(),
          //tipModule: BillModule_Tip(),
          lastUpdatedSession: DateTime.now(),
        ).toJson())
        .then((value) => value.id);
  }

  Future pushBillData(BillData billData) =>
      _billCollection.add(billData.toDataTransferObj.toJson());

  BillData? snapshotToRuntimeObj(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists ? BillDataDTO.fromJson(snapshot.data()).toRuntimeObj(snapshot.id) : null;

  // Future pushUserData(UserData userData) async =>
  //     _userDocument.set(userData.toDataTransferObj.toJson());
}
