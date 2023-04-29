import 'package:cloud_firestore/cloud_firestore.dart';

class Databaseservice {
  final String uid;
  Databaseservice({required this.uid});

  final CollectionReference recipecoll =
      FirebaseFirestore.instance.collection('new recipes');

  Future updaterecipes(String title, String ingredients, String recipe) async {
    return await recipecoll
        .doc(uid)
        .set({'title': title, 'ingredients': ingredients, 'recipe': recipe});
  }
}
