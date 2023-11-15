import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_cache/firestore_cache.dart';
import 'package:project_bs/net_models/bill/everything_else_item_group_dto.dart';
import 'package:project_bs/runtime_models/user/user_data.dart';
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
          .where('payerUid', isEqualTo: userData?.uid)
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

  UserData? get userData => read();

  Future<String> createBill({
    required DateTime dateTime,
    required String name,
    required double totalSpent,
    required PublicProfile payer,
    required List<PublicProfile> primarySplits,
  }) async {
    final primarySplitUids = primarySplits.map((profile) => profile.uid).toList();

    return _billCollection
        .add(BillDataDTO(
          dateTime: dateTime,
          name: name,
          totalSpent: totalSpent,
          payerUid: payer.uid,
          primarySplits: primarySplitUids,
          //itemGroups: List.empty(),
          //taxModule: BillModule_Tax(),
          //tipModule: BillModule_Tip(),
          splitBalances: {},
          paymentResolveStatuses: {},
          everythingElse: EverythingElseItemGroupDTO(
            primarySplits: [payer.uid] + primarySplitUids,
            items: List.empty(),
            splitBalances: {},
            splitRules: List.empty(),
          ),
          lastUpdatedSession: DateTime.now(),
        ).toJson())
        .then((value) => value.id);
  }

  Future pushBillData(BillData billData) =>
      _billCollection.add(billData.toDataTransferObj.toJson());

  BillData? snapshotToRuntimeObj(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      snapshot.exists
          ? BillDataDTO.fromJson(snapshot.data()).toRuntimeObj(snapshot.id, userData!)
          : null;

  // Future pushUserData(UserData userData) async =>
  //     _userDocument.set(userData.toDataTransferObj.toJson());
}
