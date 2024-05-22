import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  String bookName;
  String authName;
  DocumentReference? documentReference; // Optional

  Book({
    required this.bookName,
    required this.authName,
    this.documentReference,
  });

  Book.fromMap(Map<String, dynamic> map, {this.documentReference})
      : bookName = map['bookName'] ?? '',
        authName = map['authName'] ?? '';

  Book.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(
    snapshot.data() as Map<String, dynamic>,
    documentReference: snapshot.reference,
  );

  Map<String, dynamic> toJson() {
    return {
      'bookName': bookName,
      'authName': authName,
    };
  }
}
