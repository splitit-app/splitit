import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_cache/firestore_cache.dart';
import 'package:project_bs/net_models/bill/bill_data_dto.dart';
import 'package:project_bs/net_models/user/user_data_dto.dart';
import 'package:project_bs/runtime_models/bill/bill_data.dart';

class BillDataRepository {
  final _billCollection = FirebaseFirestore.instance.collection('bills');

  Future uploadBill(BillData billData) {
    // final bruh = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(billData.toDataTransferObj.payerUid)
    //     .get()
    //     .then((snapshot) => snapshot.data());

    // if (bruh == null) return;

    // print(bruh);
    // UserDataDTO.fromJson(bruh);
    return _billCollection.add(billData.toDataTransferObj.toJson());
  }

  Future<QuerySnapshot<Map<String, dynamic>>> get billDocumentSnapshots =>
      FirestoreCache.getDocuments(
        query: _billCollection,
        cacheDocRef: FirebaseFirestore.instance.doc('cacheTimestamps/bills'),
        firestoreCacheField: 'lastUpdatedSession',
      );

  BillData? snapshotToRuntimeObj(
          QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists
          ? BillDataDTO.fromJson(snapshot.data()).toRuntimeObj
          : null;

  Stream<List<BillData>?> get billDataStream {
    try {
      return _billCollection.snapshots().map((snapshot) =>
          snapshot.docs.map((e) => snapshotToRuntimeObj(e)).nonNulls.toList());
    } catch (e) {
      throw Exception(e);
    }
  }
  // Future pushUserData(UserData userData) async =>
  //     _userDocument.set(userData.toDataTransferObj.toJson());
}
