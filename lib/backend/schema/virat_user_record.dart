import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'virat_user_record.g.dart';

abstract class ViratUserRecord
    implements Built<ViratUserRecord, ViratUserRecordBuilder> {
  static Serializer<ViratUserRecord> get serializer =>
      _$viratUserRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get gender;

  @nullable
  bool get exists;

  @nullable
  @BuiltValueField(wireName: 'Is_Admin')
  String get isAdmin;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ViratUserRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..gender = ''
    ..exists = false
    ..isAdmin = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Virat_User');

  static Stream<ViratUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ViratUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ViratUserRecord._();
  factory ViratUserRecord([void Function(ViratUserRecordBuilder) updates]) =
      _$ViratUserRecord;

  static ViratUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createViratUserRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String gender,
  bool exists,
  String isAdmin,
}) =>
    serializers.toFirestore(
        ViratUserRecord.serializer,
        ViratUserRecord((v) => v
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..gender = gender
          ..exists = exists
          ..isAdmin = isAdmin));
