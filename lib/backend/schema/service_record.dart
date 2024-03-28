import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRecord extends FirestoreRecord {
  ServiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ServiceDescription" field.
  String? _serviceDescription;
  String get serviceDescription => _serviceDescription ?? '';
  bool hasServiceDescription() => _serviceDescription != null;

  // "ServiceID" field.
  String? _serviceID;
  String get serviceID => _serviceID ?? '';
  bool hasServiceID() => _serviceID != null;

  // "ServiceName" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "ServiceProviderName" field.
  DocumentReference? _serviceProviderName;
  DocumentReference? get serviceProviderName => _serviceProviderName;
  bool hasServiceProviderName() => _serviceProviderName != null;

  // "ServicePrice" field.
  double? _servicePrice;
  double get servicePrice => _servicePrice ?? 0.0;
  bool hasServicePrice() => _servicePrice != null;

  // "ServicePhoto" field.
  String? _servicePhoto;
  String get servicePhoto => _servicePhoto ?? '';
  bool hasServicePhoto() => _servicePhoto != null;

  void _initializeFields() {
    _serviceDescription = snapshotData['ServiceDescription'] as String?;
    _serviceID = snapshotData['ServiceID'] as String?;
    _serviceName = snapshotData['ServiceName'] as String?;
    _serviceProviderName =
        snapshotData['ServiceProviderName'] as DocumentReference?;
    _servicePrice = castToType<double>(snapshotData['ServicePrice']);
    _servicePhoto = snapshotData['ServicePhoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Service');

  static Stream<ServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceRecord.fromSnapshot(s));

  static Future<ServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceRecord.fromSnapshot(s));

  static ServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceRecordData({
  String? serviceDescription,
  String? serviceID,
  String? serviceName,
  DocumentReference? serviceProviderName,
  double? servicePrice,
  String? servicePhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ServiceDescription': serviceDescription,
      'ServiceID': serviceID,
      'ServiceName': serviceName,
      'ServiceProviderName': serviceProviderName,
      'ServicePrice': servicePrice,
      'ServicePhoto': servicePhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceRecordDocumentEquality implements Equality<ServiceRecord> {
  const ServiceRecordDocumentEquality();

  @override
  bool equals(ServiceRecord? e1, ServiceRecord? e2) {
    return e1?.serviceDescription == e2?.serviceDescription &&
        e1?.serviceID == e2?.serviceID &&
        e1?.serviceName == e2?.serviceName &&
        e1?.serviceProviderName == e2?.serviceProviderName &&
        e1?.servicePrice == e2?.servicePrice &&
        e1?.servicePhoto == e2?.servicePhoto;
  }

  @override
  int hash(ServiceRecord? e) => const ListEquality().hash([
        e?.serviceDescription,
        e?.serviceID,
        e?.serviceName,
        e?.serviceProviderName,
        e?.servicePrice,
        e?.servicePhoto
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceRecord;
}
