import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_details_record.g.dart';

abstract class OrderDetailsRecord
    implements Built<OrderDetailsRecord, OrderDetailsRecordBuilder> {
  static Serializer<OrderDetailsRecord> get serializer =>
      _$orderDetailsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'UserId')
  DocumentReference get userId;

  @nullable
  DocumentReference get aid;

  @nullable
  @BuiltValueField(wireName: 'Order_Time')
  DateTime get orderTime;

  @nullable
  @BuiltValueField(wireName: 'Order_Status')
  String get orderStatus;

  @nullable
  @BuiltValueField(wireName: 'Delivery_Date')
  DateTime get deliveryDate;

  @nullable
  @BuiltValueField(wireName: 'Delivery_Time')
  String get deliveryTime;

  @nullable
  @BuiltValueField(wireName: 'Is_DeliveryTime')
  bool get isDeliveryTime;

  @nullable
  double get subtotal;

  @nullable
  @BuiltValueField(wireName: 'Is_Delivered')
  bool get isDelivered;

  @nullable
  @BuiltValueField(wireName: 'Delivery_Charges')
  double get deliveryCharges;

  @nullable
  @BuiltValueField(wireName: 'Delivery_char_free')
  bool get deliveryCharFree;

  @nullable
  @BuiltValueField(wireName: 'Is_Delivery_Charge')
  bool get isDeliveryCharge;

  @nullable
  @BuiltValueField(wireName: 'Is_Order')
  bool get isOrder;

  @nullable
  @BuiltValueField(wireName: 'No_of_items')
  int get noOfItems;

  @nullable
  @BuiltValueField(wireName: 'Mrp')
  double get mrp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrderDetailsRecordBuilder builder) => builder
    ..orderStatus = ''
    ..deliveryTime = ''
    ..isDeliveryTime = false
    ..subtotal = 0.0
    ..isDelivered = false
    ..deliveryCharges = 0.0
    ..deliveryCharFree = false
    ..isDeliveryCharge = false
    ..isOrder = false
    ..noOfItems = 0
    ..mrp = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Order_details');

  static Stream<OrderDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrderDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrderDetailsRecord._();
  factory OrderDetailsRecord(
          [void Function(OrderDetailsRecordBuilder) updates]) =
      _$OrderDetailsRecord;

  static OrderDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrderDetailsRecordData({
  DocumentReference userId,
  DocumentReference aid,
  DateTime orderTime,
  String orderStatus,
  DateTime deliveryDate,
  String deliveryTime,
  bool isDeliveryTime,
  double subtotal,
  bool isDelivered,
  double deliveryCharges,
  bool deliveryCharFree,
  bool isDeliveryCharge,
  bool isOrder,
  int noOfItems,
  double mrp,
}) =>
    serializers.toFirestore(
        OrderDetailsRecord.serializer,
        OrderDetailsRecord((o) => o
          ..userId = userId
          ..aid = aid
          ..orderTime = orderTime
          ..orderStatus = orderStatus
          ..deliveryDate = deliveryDate
          ..deliveryTime = deliveryTime
          ..isDeliveryTime = isDeliveryTime
          ..subtotal = subtotal
          ..isDelivered = isDelivered
          ..deliveryCharges = deliveryCharges
          ..deliveryCharFree = deliveryCharFree
          ..isDeliveryCharge = isDeliveryCharge
          ..isOrder = isOrder
          ..noOfItems = noOfItems
          ..mrp = mrp));
