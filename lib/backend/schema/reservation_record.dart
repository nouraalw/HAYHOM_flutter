import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservationRecord extends FirestoreRecord {
  ReservationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "ReservationDate" field.
  String? _reservationDate;
  String get reservationDate => _reservationDate ?? '';
  bool hasReservationDate() => _reservationDate != null;

  // "ReservationID" field.
  String? _reservationID;
  String get reservationID => _reservationID ?? '';
  bool hasReservationID() => _reservationID != null;

  // "ReservationTime" field.
  String? _reservationTime;
  String get reservationTime => _reservationTime ?? '';
  bool hasReservationTime() => _reservationTime != null;

  // "ServiceID" field.
  DocumentReference? _serviceID;
  DocumentReference? get serviceID => _serviceID;
  bool hasServiceID() => _serviceID != null;

  // "UserID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _location = snapshotData['Location'] as String?;
    _reservationDate = snapshotData['ReservationDate'] as String?;
    _reservationID = snapshotData['ReservationID'] as String?;
    _reservationTime = snapshotData['ReservationTime'] as String?;
    _serviceID = snapshotData['ServiceID'] as DocumentReference?;
    _userID = snapshotData['UserID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservation');

  static Stream<ReservationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationRecord.fromSnapshot(s));

  static Future<ReservationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationRecord.fromSnapshot(s));

  static ReservationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationRecordData({
  String? location,
  String? reservationDate,
  String? reservationID,
  String? reservationTime,
  DocumentReference? serviceID,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Location': location,
      'ReservationDate': reservationDate,
      'ReservationID': reservationID,
      'ReservationTime': reservationTime,
      'ServiceID': serviceID,
      'UserID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationRecordDocumentEquality implements Equality<ReservationRecord> {
  const ReservationRecordDocumentEquality();

  @override
  bool equals(ReservationRecord? e1, ReservationRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.reservationDate == e2?.reservationDate &&
        e1?.reservationID == e2?.reservationID &&
        e1?.reservationTime == e2?.reservationTime &&
        e1?.serviceID == e2?.serviceID &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(ReservationRecord? e) => const ListEquality().hash([
        e?.location,
        e?.reservationDate,
        e?.reservationID,
        e?.reservationTime,
        e?.serviceID,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is ReservationRecord;
}
