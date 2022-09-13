// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_master_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductMasterRecord> _$productMasterRecordSerializer =
    new _$ProductMasterRecordSerializer();

class _$ProductMasterRecordSerializer
    implements StructuredSerializer<ProductMasterRecord> {
  @override
  final Iterable<Type> types = const [
    ProductMasterRecord,
    _$ProductMasterRecord
  ];
  @override
  final String wireName = 'ProductMasterRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductMasterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sQLId;
    if (value != null) {
      result
        ..add('SQL_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.itemMaster;
    if (value != null) {
      result
        ..add('item_master')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bid;
    if (value != null) {
      result
        ..add('bid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cid;
    if (value != null) {
      result
        ..add('cid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.disc;
    if (value != null) {
      result
        ..add('disc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.addingTime;
    if (value != null) {
      result
        ..add('Adding_Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.brandName;
    if (value != null) {
      result
        ..add('brand_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoOnList;
    if (value != null) {
      result
        ..add('PhotoOnList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catagoreyName;
    if (value != null) {
      result
        ..add('Catagorey_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isHomePage;
    if (value != null) {
      result
        ..add('Is_HomePage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('User_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.favourateTime;
    if (value != null) {
      result
        ..add('favourate_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.favourite;
    if (value != null) {
      result
        ..add('favourite')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  ProductMasterRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductMasterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'SQL_id':
          result.sQLId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'item_master':
          result.itemMaster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bid':
          result.bid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cid':
          result.cid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mrp':
          result.mrp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'disc':
          result.disc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Adding_Time':
          result.addingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'brand_name':
          result.brandName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PhotoOnList':
          result.photoOnList = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Catagorey_name':
          result.catagoreyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Is_HomePage':
          result.isHomePage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'User_id':
          result.userId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'favourate_time':
          result.favourateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'favourite':
          result.favourite.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$ProductMasterRecord extends ProductMasterRecord {
  @override
  final int sQLId;
  @override
  final String itemMaster;
  @override
  final int bid;
  @override
  final int cid;
  @override
  final double mrp;
  @override
  final double rate;
  @override
  final double disc;
  @override
  final DateTime addingTime;
  @override
  final String brandName;
  @override
  final String photoOnList;
  @override
  final String catagoreyName;
  @override
  final bool isHomePage;
  @override
  final DocumentReference<Object> userId;
  @override
  final DateTime favourateTime;
  @override
  final BuiltList<DocumentReference<Object>> favourite;
  @override
  final DocumentReference<Object> reference;

  factory _$ProductMasterRecord(
          [void Function(ProductMasterRecordBuilder) updates]) =>
      (new ProductMasterRecordBuilder()..update(updates))._build();

  _$ProductMasterRecord._(
      {this.sQLId,
      this.itemMaster,
      this.bid,
      this.cid,
      this.mrp,
      this.rate,
      this.disc,
      this.addingTime,
      this.brandName,
      this.photoOnList,
      this.catagoreyName,
      this.isHomePage,
      this.userId,
      this.favourateTime,
      this.favourite,
      this.reference})
      : super._();

  @override
  ProductMasterRecord rebuild(
          void Function(ProductMasterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductMasterRecordBuilder toBuilder() =>
      new ProductMasterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductMasterRecord &&
        sQLId == other.sQLId &&
        itemMaster == other.itemMaster &&
        bid == other.bid &&
        cid == other.cid &&
        mrp == other.mrp &&
        rate == other.rate &&
        disc == other.disc &&
        addingTime == other.addingTime &&
        brandName == other.brandName &&
        photoOnList == other.photoOnList &&
        catagoreyName == other.catagoreyName &&
        isHomePage == other.isHomePage &&
        userId == other.userId &&
        favourateTime == other.favourateTime &&
        favourite == other.favourite &&
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
                                                                    sQLId
                                                                        .hashCode),
                                                                itemMaster
                                                                    .hashCode),
                                                            bid.hashCode),
                                                        cid.hashCode),
                                                    mrp.hashCode),
                                                rate.hashCode),
                                            disc.hashCode),
                                        addingTime.hashCode),
                                    brandName.hashCode),
                                photoOnList.hashCode),
                            catagoreyName.hashCode),
                        isHomePage.hashCode),
                    userId.hashCode),
                favourateTime.hashCode),
            favourite.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductMasterRecord')
          ..add('sQLId', sQLId)
          ..add('itemMaster', itemMaster)
          ..add('bid', bid)
          ..add('cid', cid)
          ..add('mrp', mrp)
          ..add('rate', rate)
          ..add('disc', disc)
          ..add('addingTime', addingTime)
          ..add('brandName', brandName)
          ..add('photoOnList', photoOnList)
          ..add('catagoreyName', catagoreyName)
          ..add('isHomePage', isHomePage)
          ..add('userId', userId)
          ..add('favourateTime', favourateTime)
          ..add('favourite', favourite)
          ..add('reference', reference))
        .toString();
  }
}

class ProductMasterRecordBuilder
    implements Builder<ProductMasterRecord, ProductMasterRecordBuilder> {
  _$ProductMasterRecord _$v;

  int _sQLId;
  int get sQLId => _$this._sQLId;
  set sQLId(int sQLId) => _$this._sQLId = sQLId;

  String _itemMaster;
  String get itemMaster => _$this._itemMaster;
  set itemMaster(String itemMaster) => _$this._itemMaster = itemMaster;

  int _bid;
  int get bid => _$this._bid;
  set bid(int bid) => _$this._bid = bid;

  int _cid;
  int get cid => _$this._cid;
  set cid(int cid) => _$this._cid = cid;

  double _mrp;
  double get mrp => _$this._mrp;
  set mrp(double mrp) => _$this._mrp = mrp;

  double _rate;
  double get rate => _$this._rate;
  set rate(double rate) => _$this._rate = rate;

  double _disc;
  double get disc => _$this._disc;
  set disc(double disc) => _$this._disc = disc;

  DateTime _addingTime;
  DateTime get addingTime => _$this._addingTime;
  set addingTime(DateTime addingTime) => _$this._addingTime = addingTime;

  String _brandName;
  String get brandName => _$this._brandName;
  set brandName(String brandName) => _$this._brandName = brandName;

  String _photoOnList;
  String get photoOnList => _$this._photoOnList;
  set photoOnList(String photoOnList) => _$this._photoOnList = photoOnList;

  String _catagoreyName;
  String get catagoreyName => _$this._catagoreyName;
  set catagoreyName(String catagoreyName) =>
      _$this._catagoreyName = catagoreyName;

  bool _isHomePage;
  bool get isHomePage => _$this._isHomePage;
  set isHomePage(bool isHomePage) => _$this._isHomePage = isHomePage;

  DocumentReference<Object> _userId;
  DocumentReference<Object> get userId => _$this._userId;
  set userId(DocumentReference<Object> userId) => _$this._userId = userId;

  DateTime _favourateTime;
  DateTime get favourateTime => _$this._favourateTime;
  set favourateTime(DateTime favourateTime) =>
      _$this._favourateTime = favourateTime;

  ListBuilder<DocumentReference<Object>> _favourite;
  ListBuilder<DocumentReference<Object>> get favourite =>
      _$this._favourite ??= new ListBuilder<DocumentReference<Object>>();
  set favourite(ListBuilder<DocumentReference<Object>> favourite) =>
      _$this._favourite = favourite;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProductMasterRecordBuilder() {
    ProductMasterRecord._initializeBuilder(this);
  }

  ProductMasterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sQLId = $v.sQLId;
      _itemMaster = $v.itemMaster;
      _bid = $v.bid;
      _cid = $v.cid;
      _mrp = $v.mrp;
      _rate = $v.rate;
      _disc = $v.disc;
      _addingTime = $v.addingTime;
      _brandName = $v.brandName;
      _photoOnList = $v.photoOnList;
      _catagoreyName = $v.catagoreyName;
      _isHomePage = $v.isHomePage;
      _userId = $v.userId;
      _favourateTime = $v.favourateTime;
      _favourite = $v.favourite?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductMasterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductMasterRecord;
  }

  @override
  void update(void Function(ProductMasterRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductMasterRecord build() => _build();

  _$ProductMasterRecord _build() {
    _$ProductMasterRecord _$result;
    try {
      _$result = _$v ??
          new _$ProductMasterRecord._(
              sQLId: sQLId,
              itemMaster: itemMaster,
              bid: bid,
              cid: cid,
              mrp: mrp,
              rate: rate,
              disc: disc,
              addingTime: addingTime,
              brandName: brandName,
              photoOnList: photoOnList,
              catagoreyName: catagoreyName,
              isHomePage: isHomePage,
              userId: userId,
              favourateTime: favourateTime,
              favourite: _favourite?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favourite';
        _favourite?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProductMasterRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
