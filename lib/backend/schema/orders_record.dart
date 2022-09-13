import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserId')
  DocumentReference get userId;

  @nullable
  DocumentReference get aid;

  @nullable
  DocumentReference get pid;

  @nullable
  int get quantity;

  @nullable
  @BuiltValueField(wireName: 'item_name')
  String get itemName;

  @nullable
  double get mrp;

  @nullable
  double get rate;

  @nullable
  @BuiltValueField(wireName: 'Order_Time')
  DateTime get orderTime;

  @nullable
  @BuiltValueField(wireName: 'PhotoOnList')
  String get photoOnList;

  @nullable
  double get subtotal;

  @nullable
  double get disc;

  @nullable
  @BuiltValueField(wireName: 'Order_details')
  DocumentReference get orderDetails;

  @nullable
  @BuiltValueField(wireName: 'SQL_id')
  int get sQLId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..quantity = 0
    ..itemName = ''
    ..mrp = 0.0
    ..rate = 0.0
    ..photoOnList = ''
    ..subtotal = 0.0
    ..disc = 0.0
    ..sQLId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference userId,
  DocumentReference aid,
  DocumentReference pid,
  int quantity,
  String itemName,
  double mrp,
  double rate,
  DateTime orderTime,
  String photoOnList,
  double subtotal,
  double disc,
  DocumentReference orderDetails,
  int sQLId,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..userId = userId
          ..aid = aid
          ..pid = pid
          ..quantity = quantity
          ..itemName = itemName
          ..mrp = mrp
          ..rate = rate
          ..orderTime = orderTime
          ..photoOnList = photoOnList
          ..subtotal = subtotal
          ..disc = disc
          ..orderDetails = orderDetails
          ..sQLId = sQLId));
