import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScannersRecord extends FirestoreRecord {
  ScannersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  bool hasResult() => _result != null;

  void _initializeFields() {
    _imageUrl = snapshotData['image_url'] as String?;
    _result = snapshotData['result'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scanners');

  static Stream<ScannersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScannersRecord.fromSnapshot(s));

  static Future<ScannersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScannersRecord.fromSnapshot(s));

  static ScannersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScannersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScannersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScannersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScannersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScannersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScannersRecordData({
  String? imageUrl,
  String? result,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image_url': imageUrl,
      'result': result,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScannersRecordDocumentEquality implements Equality<ScannersRecord> {
  const ScannersRecordDocumentEquality();

  @override
  bool equals(ScannersRecord? e1, ScannersRecord? e2) {
    return e1?.imageUrl == e2?.imageUrl && e1?.result == e2?.result;
  }

  @override
  int hash(ScannersRecord? e) =>
      const ListEquality().hash([e?.imageUrl, e?.result]);

  @override
  bool isValidKey(Object? o) => o is ScannersRecord;
}
