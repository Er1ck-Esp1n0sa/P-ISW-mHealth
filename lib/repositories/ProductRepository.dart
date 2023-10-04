import 'package:cloud_firestore/cloud_firestore.dart';

class ProductRepository {
  final instance = FirebaseFirestore.instance.collection("products");

  Future<void> createProduct(Map<String, dynamic> data) async {
    try {} catch (e) {
      rethrow;
    }
  }

  Future<dynamic> getAllProduct() async {
    try {
      final products = (await instance.get()).docs;
      return products;
    } catch (e) {
      rethrow;
    }
  }
}
