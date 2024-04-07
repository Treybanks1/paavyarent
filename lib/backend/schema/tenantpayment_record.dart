import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TenantpaymentRecord extends FirestoreRecord {
  TenantpaymentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  bool hasTax() => _tax != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "vendor_name" field.
  String? _vendorName;
  String get vendorName => _vendorName ?? '';
  bool hasVendorName() => _vendorName != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _status = snapshotData['status'] as String?;
    _tax = castToType<double>(snapshotData['tax']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _vendorName = snapshotData['vendor_name'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _dueDate = snapshotData['due_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tenantpayment');

  static Stream<TenantpaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TenantpaymentRecord.fromSnapshot(s));

  static Future<TenantpaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TenantpaymentRecord.fromSnapshot(s));

  static TenantpaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TenantpaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TenantpaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TenantpaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TenantpaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TenantpaymentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTenantpaymentRecordData({
  String? name,
  double? amount,
  String? status,
  double? tax,
  DateTime? createdAt,
  String? vendorName,
  DocumentReference? user,
  DateTime? dueDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'status': status,
      'tax': tax,
      'created_at': createdAt,
      'vendor_name': vendorName,
      'user': user,
      'due_date': dueDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TenantpaymentRecordDocumentEquality
    implements Equality<TenantpaymentRecord> {
  const TenantpaymentRecordDocumentEquality();

  @override
  bool equals(TenantpaymentRecord? e1, TenantpaymentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.status == e2?.status &&
        e1?.tax == e2?.tax &&
        e1?.createdAt == e2?.createdAt &&
        e1?.vendorName == e2?.vendorName &&
        e1?.user == e2?.user &&
        e1?.dueDate == e2?.dueDate;
  }

  @override
  int hash(TenantpaymentRecord? e) => const ListEquality().hash([
        e?.name,
        e?.amount,
        e?.status,
        e?.tax,
        e?.createdAt,
        e?.vendorName,
        e?.user,
        e?.dueDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TenantpaymentRecord;
}
