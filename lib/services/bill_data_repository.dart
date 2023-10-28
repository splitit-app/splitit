import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_cache/firestore_cache.dart';

import '../net_models/bill/bill_data_dto.dart';
import '../runtime_models/bill/bill_data.dart';

class BillDataRepository {
  final String uid;

  BillDataRepository({required this.uid});

  final _billCollection = FirebaseFirestore.instance.collection('bills');

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

  BillData? snapshotToRuntimeObj(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists ? BillDataDTO.fromJson(snapshot.data()).toRuntimeObj : null;

  Future pushBillData(BillData billData) =>
      _billCollection.add(billData.toDataTransferObj.toJson());

  // Future pushUserData(UserData userData) async =>
  //     _userDocument.set(userData.toDataTransferObj.toJson());
}
