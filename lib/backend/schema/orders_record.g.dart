// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrdersRecord object,
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
    value = object.pid;
    if (value != null) {
      result
        ..add('pid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mrp;
    if (value != null) {
      result
        ..add('mrp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.orderTime;
    if (value != null) {
      result
        ..add('Order_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoOnList;
    if (value != null) {
      result
        ..add('PhotoOnList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subtotal;
    if (value != null) {
      result
        ..add('subtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.disc;
    if (value != null) {
      result
        ..add('disc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.orderDetails;
    if (value != null) {
      result
        ..add('Order_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.sQLId;
    if (value != null) {
      result
        ..add('SQL_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  OrdersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

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
        case 'pid':
          result.pid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mrp':
          result.mrp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Order_Time':
          result.orderTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'PhotoOnList':
          result.photoOnList = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subtotal':
          result.subtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'disc':
          result.disc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Order_details':
          result.orderDetails = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'SQL_id':
          result.sQLId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final DocumentReference<Object> userId;
  @override
  final DocumentReference<Object> aid;
  @override
  final DocumentReference<Object> pid;
  @override
  final int quantity;
  @override
  final String itemName;
  @override
  final double mrp;
  @override
  final double rate;
  @override
  final DateTime orderTime;
  @override
  final String photoOnList;
  @override
  final double subtotal;
  @override
  final double disc;
  @override
  final DocumentReference<Object> orderDetails;
  @override
  final int sQLId;
  @override
  final DocumentReference<Object> reference;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder) updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.userId,
      this.aid,
      this.pid,
      this.quantity,
      this.itemName,
      this.mrp,
      this.rate,
      this.orderTime,
      this.photoOnList,
      this.subtotal,
      this.disc,
      this.orderDetails,
      this.sQLId,
      this.reference})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        userId == other.userId &&
        aid == other.aid &&
        pid == other.pid &&
        quantity == other.quantity &&
        itemName == other.itemName &&
        mrp == other.mrp &&
        rate == other.rate &&
        orderTime == other.orderTime &&
        photoOnList == other.photoOnList &&
        subtotal == other.subtotal &&
        disc == other.disc &&
        orderDetails == other.orderDetails &&
        sQLId == other.sQLId &&
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
                                                    $jc($jc(0, userId.hashCode),
                                                        aid.hashCode),
                                                    pid.hashCode),
                                                quantity.hashCode),
                                            itemName.hashCode),
                                        mrp.hashCode),
                                    rate.hashCode),
                                orderTime.hashCode),
                            photoOnList.hashCode),
                        subtotal.hashCode),
                    disc.hashCode),
                orderDetails.hashCode),
            sQLId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('userId', userId)
          ..add('aid', aid)
          ..add('pid', pid)
          ..add('quantity', quantity)
          ..add('itemName', itemName)
          ..add('mrp', mrp)
          ..add('rate', rate)
          ..add('orderTime', orderTime)
          ..add('photoOnList', photoOnList)
          ..add('subtotal', subtotal)
          ..add('disc', disc)
          ..add('orderDetails', orderDetails)
          ..add('sQLId', sQLId)
          ..add('reference', reference))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord _$v;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  DocumentReference<Object> _aid;
  DocumentReference<Object> get aid => _$this._aid;
  set aid(DocumentReference<Object> aid) => _$this._aid = aid;

  DocumentReference<Object> _pid;
  DocumentReference<Object> get pid => _$this._pid;
  set pid(DocumentReference<Object> pid) => _$this._pid = pid;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  String _itemName;
  String get itemName => _$this._itemName;
  set itemName(String itemName) => _$this._itemName = itemName;

  double _mrp;
  double get mrp => _$this._mrp;
  set mrp(double mrp) => _$this._mrp = mrp;

  double _rate;
  double get rate => _$this._rate;
  set rate(double rate) => _$this._rate = rate;

  DateTime _orderTime;
  DateTime get orderTime => _$this._orderTime;
  set orderTime(DateTime orderTime) => _$this._orderTime = orderTime;

  String _photoOnList;
  String get photoOnList => _$this._photoOnList;
  set photoOnList(String photoOnList) => _$this._photoOnList = photoOnList;

  double _subtotal;
  double get subtotal => _$this._subtotal;
  set subtotal(double subtotal) => _$this._subtotal = subtotal;

  double _disc;
  double get disc => _$this._disc;
  set disc(double disc) => _$this._disc = disc;

  DocumentReference<Object> _orderDetails;
  DocumentReference<Object> get orderDetails => _$this._orderDetails;
  set orderDetails(DocumentReference<Object> orderDetails) =>
      _$this._orderDetails = orderDetails;

  int _sQLId;
  int get sQLId => _$this._sQLId;
  set sQLId(int sQLId) => _$this._sQLId = sQLId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _aid = $v.aid;
      _pid = $v.pid;
      _quantity = $v.quantity;
      _itemName = $v.itemName;
      _mrp = $v.mrp;
      _rate = $v.rate;
      _orderTime = $v.orderTime;
      _photoOnList = $v.photoOnList;
      _subtotal = $v.subtotal;
      _disc = $v.disc;
      _orderDetails = $v.orderDetails;
      _sQLId = $v.sQLId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    final _$result = _$v ??
        new _$OrdersRecord._(
            userId: userId,
            aid: aid,
            pid: pid,
            quantity: quantity,
            itemName: itemName,
            mrp: mrp,
            rate: rate,
            orderTime: orderTime,
            photoOnList: photoOnList,
            subtotal: subtotal,
            disc: disc,
            orderDetails: orderDetails,
            sQLId: sQLId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
