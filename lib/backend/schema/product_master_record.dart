import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'product_master_record.g.dart';

abstract class ProductMasterRecord
    implements Built<ProductMasterRecord, ProductMasterRecordBuilder> {
  static Serializer<ProductMasterRecord> get serializer =>
      _$productMasterRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'SQL_id')
  int get sQLId;

  @nullable
  @BuiltValueField(wireName: 'item_master')
  String get itemMaster;

  @nullable
  int get bid;

  @nullable
  int get cid;

  @nullable
  double get mrp;

  @nullable
  double get rate;

  @nullable
  double get disc;

  @nullable
  @BuiltValueField(wireName: 'Adding_Time')
  DateTime get addingTime;

  @nullable
  @BuiltValueField(wireName: 'brand_name')
  String get brandName;

  @nullable
  @BuiltValueField(wireName: 'PhotoOnList')
  String get photoOnList;

  @nullable
  @BuiltValueField(wireName: 'Catagorey_name')
  String get catagoreyName;

  @nullable
  @BuiltValueField(wireName: 'Is_HomePage')
  bool get isHomePage;

  @nullable
  @BuiltValueField(wireName: 'User_id')
  DocumentReference get userId;

  @nullable
  @BuiltValueField(wireName: 'favourate_time')
  DateTime get favourateTime;

  @nullable
  BuiltList<DocumentReference> get favourite;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductMasterRecordBuilder builder) => builder
    ..sQLId = 0
    ..itemMaster = ''
    ..bid = 0
    ..cid = 0
    ..mrp = 0.0
    ..rate = 0.0
    ..disc = 0.0
    ..brandName = ''
    ..photoOnList = ''
    ..catagoreyName = ''
    ..isHomePage = false
    ..favourite = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Product_Master');

  static Stream<ProductMasterRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductMasterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductMasterRecord._();
  factory ProductMasterRecord(
          [void Function(ProductMasterRecordBuilder) updates]) =
      _$ProductMasterRecord;

  static ProductMasterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductMasterRecordData({
  int sQLId,
  String itemMaster,
  int bid,
  int cid,
  double mrp,
  double rate,
  double disc,
  DateTime addingTime,
  String brandName,
  String photoOnList,
  String catagoreyName,
  bool isHomePage,
  DocumentReference userId,
  DateTime favourateTime,
}) =>
    serializers.toFirestore(
        ProductMasterRecord.serializer,
        ProductMasterRecord((p) => p
          ..sQLId = sQLId
          ..itemMaster = itemMaster
          ..bid = bid
          ..cid = cid
          ..mrp = mrp
          ..rate = rate
          ..disc = disc
          ..addingTime = addingTime
          ..brandName = brandName
          ..photoOnList = photoOnList
          ..catagoreyName = catagoreyName
          ..isHomePage = isHomePage
          ..userId = userId
          ..favourateTime = favourateTime
          ..favourite = null));
