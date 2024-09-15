import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  // "first_acount" field.
  int? _firstAcount;
  int get firstAcount => _firstAcount ?? 0;
  bool hasFirstAcount() => _firstAcount != null;

  // "job" field.
  int? _job;
  int get job => _job ?? 0;
  bool hasJob() => _job != null;

  // "objetivo" field.
  List<String>? _objetivo;
  List<String> get objetivo => _objetivo ?? const [];
  bool hasObjetivo() => _objetivo != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "frecuencia" field.
  int? _frecuencia;
  int get frecuencia => _frecuencia ?? 0;
  bool hasFrecuencia() => _frecuencia != null;

  // "beneficios" field.
  List<String>? _beneficios;
  List<String> get beneficios => _beneficios ?? const [];
  bool hasBeneficios() => _beneficios != null;

  // "dolares" field.
  int? _dolares;
  int get dolares => _dolares ?? 0;
  bool hasDolares() => _dolares != null;

  // "photo_ID" field.
  String? _photoID;
  String get photoID => _photoID ?? '';
  bool hasPhotoID() => _photoID != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _firstAcount = castToType<int>(snapshotData['first_acount']);
    _job = castToType<int>(snapshotData['job']);
    _objetivo = getDataList(snapshotData['objetivo']);
    _displayName = snapshotData['display_name'] as String?;
    _frecuencia = castToType<int>(snapshotData['frecuencia']);
    _beneficios = getDataList(snapshotData['beneficios']);
    _dolares = castToType<int>(snapshotData['dolares']);
    _photoID = snapshotData['photo_ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? edad,
  int? firstAcount,
  int? job,
  String? displayName,
  int? frecuencia,
  int? dolares,
  String? photoID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edad': edad,
      'first_acount': firstAcount,
      'job': job,
      'display_name': displayName,
      'frecuencia': frecuencia,
      'dolares': dolares,
      'photo_ID': photoID,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.edad == e2?.edad &&
        e1?.firstAcount == e2?.firstAcount &&
        e1?.job == e2?.job &&
        listEquality.equals(e1?.objetivo, e2?.objetivo) &&
        e1?.displayName == e2?.displayName &&
        e1?.frecuencia == e2?.frecuencia &&
        listEquality.equals(e1?.beneficios, e2?.beneficios) &&
        e1?.dolares == e2?.dolares &&
        e1?.photoID == e2?.photoID;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.edad,
        e?.firstAcount,
        e?.job,
        e?.objetivo,
        e?.displayName,
        e?.frecuencia,
        e?.beneficios,
        e?.dolares,
        e?.photoID
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
