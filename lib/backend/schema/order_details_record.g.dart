// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDetailsRecord> _$orderDetailsRecordSerializer =
    new _$OrderDetailsRecordSerializer();

class _$OrderDetailsRecordSerializer
    implements StructuredSerializer<OrderDetailsRecord> {
  @override
  final Iterable<Type> types = const [OrderDetailsRecord, _$OrderDetailsRecord];
  @override
  final String wireName = 'OrderDetailsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userId;
    if (value != null) {
      result
        ..add('UserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.aid;
    if (value != null) {
      result
        ..add('aid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.orderTime;
    if (value != null) {
      result
        ..add('Order_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderStatus;
    if (value != null) {
      result
        ..add('Order_Status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deliveryDate;
    if (value != null) {
      result
        ..add('Delivery_Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.deliveryTime;
    if (value != null) {
      result
        ..add('Delivery_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDeliveryTime;
    if (value != null) {
      result
        ..add('Is_DeliveryTime')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isDelivered;
    if (value != null) {
      result
        ..add('Is_Delivered')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.deliveryCharges;
    if (value != null) {
      result
        ..add('Delivery_Charges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deliveryCharFree;
    if (value != null) {
      result
        ..add('Delivery_char_free')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDeliveryCharge;
    if (value != null) {
      result
        ..add('Is_Delivery_Charge')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isOrder;
    if (value != null) {
      result
        ..add('Is_Order')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.noOfItems;
    if (value != null) {
      result
        ..add('No_of_items')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mrp;
    if (value != null) {
      result
        ..add('Mrp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  OrderDetailsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'UserId':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'aid':
          result.aid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Order_Time':
          result.orderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Order_Status':
          result.orderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Delivery_Date':
          result.deliveryDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Delivery_Time':
          result.deliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Is_DeliveryTime':
          result.isDeliveryTime = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Is_Delivered':
          result.isDelivered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Delivery_Charges':
          result.deliveryCharges = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Delivery_char_free':
          result.deliveryCharFree = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Is_Delivery_Charge':
          result.isDeliveryCharge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Is_Order':
          result.isOrder = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'No_of_items':
          result.noOfItems = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Mrp':
          result.mrp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderDetailsRecord extends OrderDetailsRecord {
  @override
  final DocumentReference<Object> userId;
  @override
  final DocumentReference<Object> aid;
  @override
  final DateTime orderTime;
  @override
  final String orderStatus;
  @override
  final DateTime deliveryDate;
  @override
  final String deliveryTime;
  @override
  final bool isDeliveryTime;
  @override
  final double subtotal;
  @override
  final bool isDelivered;
  @override
  final double deliveryCharges;
  @override
  final bool deliveryCharFree;
  @override
  final bool isDeliveryCharge;
  @override
  final bool isOrder;
  @override
  final int noOfItems;
  @override
  final double mrp;
  @override
  final DocumentReference<Object> reference;

  factory _$OrderDetailsRecord(
          [void Function(OrderDetailsRecordBuilder) updates]) =>
      (new OrderDetailsRecordBuilder()..update(updates))._build();

  _$OrderDetailsRecord._(
      {this.userId,
      this.aid,
      this.orderTime,
      this.orderStatus,
      this.deliveryDate,
      this.deliveryTime,
      this.isDeliveryTime,
      this.subtotal,
      this.isDelivered,
      this.deliveryCharges,
      this.deliveryCharFree,
      this.isDeliveryCharge,
      this.isOrder,
      this.noOfItems,
      this.mrp,
      this.reference})
      : super._();

  @override
  OrderDetailsRecord rebuild(
          void Function(OrderDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailsRecordBuilder toBuilder() =>
      new OrderDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailsRecord &&
        userId == other.userId &&
        aid == other.aid &&
        orderTime == other.orderTime &&
        orderStatus == other.orderStatus &&
        deliveryDate == other.deliveryDate &&
        deliveryTime == other.deliveryTime &&
        isDeliveryTime == other.isDeliveryTime &&
        subtotal == other.subtotal &&
        isDelivered == other.isDelivered &&
        deliveryCharges == other.deliveryCharges &&
        deliveryCharFree == other.deliveryCharFree &&
        isDeliveryCharge == other.isDeliveryCharge &&
        isOrder == other.isOrder &&
        noOfItems == other.noOfItems &&
        mrp == other.mrp &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    userId
                                                                        .hashCode),
                                                                aid.hashCode),
                                                            orderTime.hashCode),
                                                        orderStatus.hashCode),
                                                    deliveryDate.hashCode),
                                                deliveryTime.hashCode),
                                            isDeliveryTime.hashCode),
                                        subtotal.hashCode),
                                    isDelivered.hashCode),
                                deliveryCharges.hashCode),
                            deliveryCharFree.hashCode),
                        isDeliveryCharge.hashCode),
                    isOrder.hashCode),
                noOfItems.hashCode),
            mrp.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDetailsRecord')
          ..add('userId', userId)
          ..add('aid', aid)
          ..add('orderTime', orderTime)
          ..add('orderStatus', orderStatus)
          ..add('deliveryDate', deliveryDate)
          ..add('deliveryTime', deliveryTime)
          ..add('isDeliveryTime', isDeliveryTime)
          ..add('subtotal', subtotal)
          ..add('isDelivered', isDelivered)
          ..add('deliveryCharges', deliveryCharges)
          ..add('deliveryCharFree', deliveryCharFree)
          ..add('isDeliveryCharge', isDeliveryCharge)
          ..add('isOrder', isOrder)
          ..add('noOfItems', noOfItems)
          ..add('mrp', mrp)
          ..add('reference', reference))
        .toString();
  }
}

class OrderDetailsRecordBuilder
    implements Builder<OrderDetailsRecord, OrderDetailsRecordBuilder> {
  _$OrderDetailsRecord _$v;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  DocumentReference<Object> _aid;
  DocumentReference<Object> get aid => _$this._aid;
  set aid(DocumentReference<Object> aid) => _$this._aid = aid;

  DateTime _orderTime;
  DateTime get orderTime => _$this._orderTime;
  set orderTime(DateTime orderTime) => _$this._orderTime = orderTime;

  String _orderStatus;
  String get orderStatus => _$this._orderStatus;
  set orderStatus(String orderStatus) => _$this._orderStatus = orderStatus;

  DateTime _deliveryDate;
  DateTime get deliveryDate => _$this._deliveryDate;
  set deliveryDate(DateTime deliveryDate) =>
      _$this._deliveryDate = deliveryDate;

  String _deliveryTime;
  String get deliveryTime => _$this._deliveryTime;
  set deliveryTime(String deliveryTime) => _$this._deliveryTime = deliveryTime;

  bool _isDeliveryTime;
  bool get isDeliveryTime => _$this._isDeliveryTime;
  set isDeliveryTime(bool isDeliveryTime) =>
      _$this._isDeliveryTime = isDeliveryTime;

  double _subtotal;
  double get subtotal => _$this._subtotal;
  set subtotal(double subtotal) => _$this._subtotal = subtotal;

  bool _isDelivered;
  bool get isDelivered => _$this._isDelivered;
  set isDelivered(bool isDelivered) => _$this._isDelivered = isDelivered;

  double _deliveryCharges;
  double get deliveryCharges => _$this._deliveryCharges;
  set deliveryCharges(double deliveryCharges) =>
      _$this._deliveryCharges = deliveryCharges;

  bool _deliveryCharFree;
  bool get deliveryCharFree => _$this._deliveryCharFree;
  set deliveryCharFree(bool deliveryCharFree) =>
      _$this._deliveryCharFree = deliveryCharFree;

  bool _isDeliveryCharge;
  bool get isDeliveryCharge => _$this._isDeliveryCharge;
  set isDeliveryCharge(bool isDeliveryCharge) =>
      _$this._isDeliveryCharge = isDeliveryCharge;

  bool _isOrder;
  bool get isOrder => _$this._isOrder;
  set isOrder(bool isOrder) => _$this._isOrder = isOrder;

  int _noOfItems;
  int get noOfItems => _$this._noOfItems;
  set noOfItems(int noOfItems) => _$this._noOfItems = noOfItems;

  double _mrp;
  double get mrp => _$this._mrp;
  set mrp(double mrp) => _$this._mrp = mrp;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrderDetailsRecordBuilder() {
    OrderDetailsRecord._initializeBuilder(this);
  }

  OrderDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _aid = $v.aid;
      _orderTime = $v.orderTime;
      _orderStatus = $v.orderStatus;
      _deliveryDate = $v.deliveryDate;
      _deliveryTime = $v.deliveryTime;
      _isDeliveryTime = $v.isDeliveryTime;
      _subtotal = $v.subtotal;
      _isDelivered = $v.isDelivered;
      _deliveryCharges = $v.deliveryCharges;
      _deliveryCharFree = $v.deliveryCharFree;
      _isDeliveryCharge = $v.isDeliveryCharge;
      _isOrder = $v.isOrder;
      _noOfItems = $v.noOfItems;
      _mrp = $v.mrp;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderDetailsRecord;
  }

  @override
  void update(void Function(OrderDetailsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDetailsRecord build() => _build();

  _$OrderDetailsRecord _build() {
    final _$result = _$v ??
        new _$OrderDetailsRecord._(
            userId: userId,
            aid: aid,
            orderTime: orderTime,
            orderStatus: orderStatus,
            deliveryDate: deliveryDate,
            deliveryTime: deliveryTime,
            isDeliveryTime: isDeliveryTime,
            subtotal: subtotal,
            isDelivered: isDelivered,
            deliveryCharges: deliveryCharges,
            deliveryCharFree: deliveryCharFree,
            isDeliveryCharge: isDeliveryCharge,
            isOrder: isOrder,
            noOfItems: noOfItems,
            mrp: mrp,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
