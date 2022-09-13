import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banners_record.g.dart';

abstract class BannersRecord
    implements Built<BannersRecord, BannersRecordBuilder> {
  static Serializer<BannersRecord> get serializer => _$bannersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserId')
  DocumentReference get userId;

  @nullable
  @BuiltValueField(wireName: 'Banner')
  String get banner;

  @nullable
  @BuiltValueField(wireName: 'CreatedTime')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BannersRecordBuilder builder) =>
      builder..banner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BannersRecord._();
  factory BannersRecord([void Function(BannersRecordBuilder) updates]) =
      _$BannersRecord;

  static BannersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBannersRecordData({
  DocumentReference userId,
  String banner,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        BannersRecord.serializer,
        BannersRecord((b) => b
          ..userId = userId
          ..banner = banner
          ..createdTime = createdTime));
