import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_cache/firestore_cache.dart';
import 'package:project_bs/runtime_models/bill/split_rule.dart';
import 'package:provider/provider.dart';

import '../net_models/bill/bill_data_dto.dart';
import '../net_models/bill/item_group_dto.dart';
import '../runtime_models/bill/bill_data.dart';
import '../runtime_models/user/public_profile.dart';
import '../runtime_models/user/user_data.dart';

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
          //taxModule: BillModule_Tax(),
          //tipModule: BillModule_Tip(),
          splitBalances: {},
          paymentResolveStatuses: {},
          everythingElse: ItemGroupDTO(
            name: 'Everything Else',
            primarySplits: [payer.uid] + primarySplitUids,
            items: List.empty(),
            splitBalances: {},
            splitRule: SplitRule.even,
            //
            splitPercentages: {
              for (String uid in [payer.uid] + primarySplitUids) uid: 1 / primarySplits.length
            },
            splitShares: {
              for (String uid in [payer.uid] + primarySplitUids) uid: 1
            },
            splitExacts: {
              for (String uid in [payer.uid] + primarySplitUids) uid: 0
            },
          ),
          itemGroups: List.empty(),
          lastUpdatedSession: DateTime.now(),
        ).toJson())
        .then((value) => value.id);
  }

  Future pushBillData(BillData billData) =>
      _billCollection.doc(billData.uid).set(billData.toDataTransferObj.toJson());

  BillData? snapshotToRuntimeObj(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) => snapshot
          .exists
      ? BillData.fromDataTransferObj(BillDataDTO.fromJson(snapshot.data()), snapshot.id, userData!)
      : null;

  // Future pushUserData(UserData userData) async =>
  //     _userDocument.set(userData.toDataTransferObj.toJson());
}
