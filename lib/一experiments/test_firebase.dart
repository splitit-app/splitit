import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../net_models/bill/bill_data_dto.dart';
import '../runtime_models/bill/bill_data.dart';

class TestDatabase {
  // Stream<List<BillData>> get bills {
  //   var db = FirebaseFirestore.instance;

  //   var snapshots = db.collection('bills').snapshots();

  //   try {
  //     return snapshots.map((snapshot) => snapshot.docs
  //         .map((doc) => BillDataDTO.fromJson(doc.data()).toRuntimeObj(doc.id))
  //         .toList());
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  // Stream<List<BillData>> get billsFromDay1 {
  //   var db = FirebaseFirestore.instance;

  //   var snapshots = db
  //       .collection('bills')
  //       .where(
  //         'dateTime',
  //         isGreaterThanOrEqualTo: DateTime(2023, 10, 4).toString(),
  //         isLessThan: DateTime(2023, 10, 5).toString(),
  //       )
  //       .snapshots();

  //   try {
  //     return snapshots.map((snapshot) => snapshot.docs
  //         .map((doc) => BillDataDTO.fromJson(doc.data()).toRuntimeObj(doc.id))
  //         .toList());
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

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

  void foo0() async {
    var db = FirebaseFirestore.instance;

    final user = <String, dynamic>{"first": "Ada", "last": "Lovelace", "born": 1815};

    await db.collection('users').add(user).then(
        (documentReference) => print('DocumentSnapshot added with ID: ${documentReference.id}'));
  }
}
