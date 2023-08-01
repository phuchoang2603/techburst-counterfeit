import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopReviewsRecord extends FirestoreRecord {
  ShopReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "reviewer_id" field.
  DocumentReference? _reviewerId;
  DocumentReference? get reviewerId => _reviewerId;
  bool hasReviewerId() => _reviewerId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _rating = castToType<int>(snapshotData['rating']);
    _content = snapshotData['content'] as String?;
    _reviewerId = snapshotData['reviewer_id'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('shop_reviews')
          : FirebaseFirestore.instance.collectionGroup('shop_reviews');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('shop_reviews').doc();

  static Stream<ShopReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopReviewsRecord.fromSnapshot(s));

  static Future<ShopReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopReviewsRecord.fromSnapshot(s));

  static ShopReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopReviewsRecordData({
  int? rating,
  String? content,
  DocumentReference? reviewerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'content': content,
      'reviewer_id': reviewerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShopReviewsRecordDocumentEquality implements Equality<ShopReviewsRecord> {
  const ShopReviewsRecordDocumentEquality();

  @override
  bool equals(ShopReviewsRecord? e1, ShopReviewsRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.content == e2?.content &&
        e1?.reviewerId == e2?.reviewerId;
  }

  @override
  int hash(ShopReviewsRecord? e) =>
      const ListEquality().hash([e?.rating, e?.content, e?.reviewerId]);

  @override
  bool isValidKey(Object? o) => o is ShopReviewsRecord;
}
