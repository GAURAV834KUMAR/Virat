import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'search_record.g.dart';

abstract class SearchRecord
    implements Built<SearchRecord, SearchRecordBuilder> {
  static Serializer<SearchRecord> get serializer => _$searchRecordSerializer;

  @nullable
  DocumentReference get id;

  @nullable
  @BuiltValueField(wireName: 'search_time')
  DateTime get searchTime;

  @nullable
  String get search;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SearchRecordBuilder builder) =>
      builder..search = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search');

  static Stream<SearchRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SearchRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SearchRecord._();
  factory SearchRecord([void Function(SearchRecordBuilder) updates]) =
      _$SearchRecord;

  static SearchRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSearchRecordData({
  DocumentReference id,
  DateTime searchTime,
  String search,
}) =>
    serializers.toFirestore(
        SearchRecord.serializer,
        SearchRecord((s) => s
          ..id = id
          ..searchTime = searchTime
          ..search = search));
