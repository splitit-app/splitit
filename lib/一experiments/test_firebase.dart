import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_bs/net_models/bill/bill_data_dto.dart';

import '../runtime_models/bill/bill_data.dart';
import '../runtime_models/bill/modules/bill_module_tax.dart';
import '../runtime_models/bill/modules/bill_module_tip.dart';
import '../runtime_models/friend/friend.dart';

class TestDatabase {
  void foo0() async {
    var db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      "first": "Ada",
      "last": "Lovelace",
      "born": 1815
    };

    await db.collection('users').add(user).then((documentReference) =>
        print('DocumentSnapshot added with ID: ${documentReference.id}'));
  }

  void uploadBill() async {
    var db = FirebaseFirestore.instance;

    final BillData billData = BillData(
      dateTime: DateTime.now(),
      name: 'FooMart',
      totalSpent: 100,
      payer: Friend(name: 'John Cena'),
      primarySplits: List.empty(),
      secondarySplits: List.empty(),
      splitRules: List.empty(),
      paymentResolveStatuses: List.empty(),
      taxModule: BillModule_Tax(),
      tipModule: BillModule_Tip(),
    );

    await db
        .collection('bills')
        .add(billData.toDataTransferObj().toJson())
        .then((documentReference) =>
            print('DocumentSnapshot added with ID: ${documentReference.id}'));
  }

  void bar0() async {
    var db = FirebaseFirestore.instance;

    await db.collection('users').get().then((querySnapshot) {
      for (var queryDocumentSnapshot in querySnapshot.docs) {
        print('${queryDocumentSnapshot.id} => ${queryDocumentSnapshot.data()}');
      }
    });
  }

  void barBill0() async {
    var db = FirebaseFirestore.instance;

    await db.collection('bills').get().then((querySnapshot) {
      for (var queryDocumentSnapshot in querySnapshot.docs) {
        print('${queryDocumentSnapshot.id} => ${queryDocumentSnapshot.data()}');
      }
    });
  }

  Stream<List<BillData>> get bills {
    var db = FirebaseFirestore.instance;

    var snapshots = db.collection('bills').snapshots();

    try {
      return snapshots.map((snapshot) => snapshot.docs
          .map((doc) => BillDataDTO.fromJson(doc.data()).toRuntimeObj())
          .toList());
    } catch (e) {
      throw Exception(e);
    }
  }

  Stream<List<BillData>> get billsFromDay1 {
    var db = FirebaseFirestore.instance;

    var snapshots = db
        .collection('bills')
        .where(
          'dateTime',
          isGreaterThanOrEqualTo: DateTime(2023, 10, 4).toString(),
          isLessThan: DateTime(2023, 10, 5).toString(),
        )
        .snapshots();

    try {
      return snapshots.map((snapshot) => snapshot.docs
          .map((doc) => BillDataDTO.fromJson(doc.data()).toRuntimeObj())
          .toList());
    } catch (e) {
      throw Exception(e);
    }
  }
}
