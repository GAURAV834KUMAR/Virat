// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductImageRecord> _$productImageRecordSerializer =
    new _$ProductImageRecordSerializer();

class _$ProductImageRecordSerializer
    implements StructuredSerializer<ProductImageRecord> {
  @override
  final Iterable<Type> types = const [ProductImageRecord, _$ProductImageRecord];
  @override
  final String wireName = 'ProductImageRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductImageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProductImageRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductImageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ProductImageRecord extends ProductImageRecord {
  @override
  final DocumentReference<Object> id;
  @override
  final String image;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> reference;

  factory _$ProductImageRecord(
          [void Function(ProductImageRecordBuilder) updates]) =>
      (new ProductImageRecordBuilder()..update(updates))._build();

  _$ProductImageRecord._(
      {this.id, this.image, this.createdTime, this.reference})
      : super._();

  @override
  ProductImageRecord rebuild(
          void Function(ProductImageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductImageRecordBuilder toBuilder() =>
      new ProductImageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductImageRecord &&
        id == other.id &&
        image == other.image &&
        createdTime == other.createdTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), image.hashCode), createdTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductImageRecord')
          ..add('id', id)
          ..add('image', image)
          ..add('createdTime', createdTime)
          ..add('reference', reference))
        .toString();
  }
}

class ProductImageRecordBuilder
    implements Builder<ProductImageRecord, ProductImageRecordBuilder> {
  _$ProductImageRecord _$v;

  DocumentReference<Object> _id;
  DocumentReference<Object> get id => _$this._id;
  set id(DocumentReference<Object> id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProductImageRecordBuilder() {
    ProductImageRecord._initializeBuilder(this);
  }

  ProductImageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _image = $v.image;
      _createdTime = $v.createdTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductImageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductImageRecord;
  }

  @override
  void update(void Function(ProductImageRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductImageRecord build() => _build();

  _$ProductImageRecord _build() {
    final _$result = _$v ??
        new _$ProductImageRecord._(
            id: id,
            image: image,
            createdTime: createdTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
