import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkorderRecord extends FirestoreRecord {
  WorkorderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "users_assigned" field.
  List<DocumentReference>? _usersAssigned;
  List<DocumentReference> get usersAssigned => _usersAssigned ?? const [];
  bool hasUsersAssigned() => _usersAssigned != null;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "number_tasks" field.
  int? _numberTasks;
  int get numberTasks => _numberTasks ?? 0;
  bool hasNumberTasks() => _numberTasks != null;

  // "completed_tasks" field.
  int? _completedTasks;
  int get completedTasks => _completedTasks ?? 0;
  bool hasCompletedTasks() => _completedTasks != null;

  // "last_edited" field.
  DateTime? _lastEdited;
  DateTime? get lastEdited => _lastEdited;
  bool hasLastEdited() => _lastEdited != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "work_category" field.
  List<String>? _workCategory;
  List<String> get workCategory => _workCategory ?? const [];
  bool hasWorkCategory() => _workCategory != null;

  // "color_category" field.
  List<Color>? _colorCategory;
  List<Color> get colorCategory => _colorCategory ?? const [];
  bool hasColorCategory() => _colorCategory != null;

  // "order_active" field.
  bool? _orderActive;
  bool get orderActive => _orderActive ?? false;
  bool hasOrderActive() => _orderActive != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _usersAssigned = getDataList(snapshotData['users_assigned']);
    _projectName = snapshotData['project_name'] as String?;
    _description = snapshotData['description'] as String?;
    _numberTasks = castToType<int>(snapshotData['number_tasks']);
    _completedTasks = castToType<int>(snapshotData['completed_tasks']);
    _lastEdited = snapshotData['last_edited'] as DateTime?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _workCategory = getDataList(snapshotData['work_category']);
    _colorCategory = getColorsList(snapshotData['color_category']);
    _orderActive = snapshotData['order_active'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workorder');

  static Stream<WorkorderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkorderRecord.fromSnapshot(s));

  static Future<WorkorderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkorderRecord.fromSnapshot(s));

  static WorkorderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkorderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkorderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkorderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkorderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkorderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkorderRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
  bool? orderActive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'project_name': projectName,
      'description': description,
      'number_tasks': numberTasks,
      'completed_tasks': completedTasks,
      'last_edited': lastEdited,
      'time_created': timeCreated,
      'order_active': orderActive,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkorderRecordDocumentEquality implements Equality<WorkorderRecord> {
  const WorkorderRecordDocumentEquality();

  @override
  bool equals(WorkorderRecord? e1, WorkorderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        listEquality.equals(e1?.usersAssigned, e2?.usersAssigned) &&
        e1?.projectName == e2?.projectName &&
        e1?.description == e2?.description &&
        e1?.numberTasks == e2?.numberTasks &&
        e1?.completedTasks == e2?.completedTasks &&
        e1?.lastEdited == e2?.lastEdited &&
        e1?.timeCreated == e2?.timeCreated &&
        listEquality.equals(e1?.workCategory, e2?.workCategory) &&
        listEquality.equals(e1?.colorCategory, e2?.colorCategory) &&
        e1?.orderActive == e2?.orderActive;
  }

  @override
  int hash(WorkorderRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.usersAssigned,
        e?.projectName,
        e?.description,
        e?.numberTasks,
        e?.completedTasks,
        e?.lastEdited,
        e?.timeCreated,
        e?.workCategory,
        e?.colorCategory,
        e?.orderActive
      ]);

  @override
  bool isValidKey(Object? o) => o is WorkorderRecord;
}
