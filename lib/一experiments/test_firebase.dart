import 'package:cloud_firestore/cloud_firestore.dart';

class TestDatabase {
  void Foo0() async {
    var db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      "first": "Ada",
      "last": "Lovelace",
      "born": 1815
    };

    await db.collection('users').add(user).then((documentReference) =>
        print('DocumentSnapshot added with ID: ${documentReference.id}'));
  }

  void Foo1() async {
    var db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      "first": "Alan",
      "last": "Mathison",
      "born": 1912
    };

    await db.collection('users').add(user).then((documentReference) =>
        print('DocumentSnapshot added with ID: ${documentReference.id}'));
  }

  void Bar0() async {
    var db = FirebaseFirestore.instance;

    await db.collection('users').get().then((querySnapshot) {
      for (var queryDocumentSnapshot in querySnapshot.docs) {
        print('${queryDocumentSnapshot.id} => ${queryDocumentSnapshot.data()}');
      }
    });
  }
}
