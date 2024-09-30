import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:planta/Features/Category/data/Repos/Category_Repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  @override
  Future<List> fetchPlantData({required String id}) async {
    List data = [];
    await FirebaseFirestore.instance
        .collection(id)
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        data.add(doc);
      }
    });
    return data;
  }
}
