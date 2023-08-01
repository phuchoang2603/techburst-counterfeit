import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "thumb" field.
  String? _thumb;
  String get thumb => _thumb ?? '';
  bool hasThumb() => _thumb != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "seller_id" field.
  DocumentReference? _sellerId;
  DocumentReference? get sellerId => _sellerId;
  bool hasSellerId() => _sellerId != null;

  // "is_selling" field.
  bool? _isSelling;
  bool get isSelling => _isSelling ?? false;
  bool hasIsSelling() => _isSelling != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "buyer_id" field.
  DocumentReference? _buyerId;
  DocumentReference? get buyerId => _buyerId;
  bool hasBuyerId() => _buyerId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _desc = snapshotData['desc'] as String?;
    _thumb = snapshotData['thumb'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _sellerId = snapshotData['seller_id'] as DocumentReference?;
    _isSelling = snapshotData['is_selling'] as bool?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _buyerId = snapshotData['buyer_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? desc,
  String? thumb,
  double? price,
  DocumentReference? sellerId,
  bool? isSelling,
  DateTime? startTime,
  DateTime? endTime,
  DocumentReference? buyerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'desc': desc,
      'thumb': thumb,
      'price': price,
      'seller_id': sellerId,
      'is_selling': isSelling,
      'start_time': startTime,
      'end_time': endTime,
      'buyer_id': buyerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.desc == e2?.desc &&
        e1?.thumb == e2?.thumb &&
        e1?.price == e2?.price &&
        e1?.sellerId == e2?.sellerId &&
        e1?.isSelling == e2?.isSelling &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.buyerId == e2?.buyerId;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.desc,
        e?.thumb,
        e?.price,
        e?.sellerId,
        e?.isSelling,
        e?.startTime,
        e?.endTime,
        e?.buyerId
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
