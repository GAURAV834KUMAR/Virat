// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchRecord> _$searchRecordSerializer =
    new _$SearchRecordSerializer();

class _$SearchRecordSerializer implements StructuredSerializer<SearchRecord> {
  @override
  final Iterable<Type> types = const [SearchRecord, _$SearchRecord];
  @override
  final String wireName = 'SearchRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchRecord object,
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
    value = object.searchTime;
    if (value != null) {
      result
        ..add('search_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SearchRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchRecordBuilder();

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
        case 'search_time':
          result.searchTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$SearchRecord extends SearchRecord {
  @override
  final DocumentReference<Object> id;
  @override
  final DateTime searchTime;
  @override
  final String search;
  @override
  final DocumentReference<Object> reference;

  factory _$SearchRecord([void Function(SearchRecordBuilder) updates]) =>
      (new SearchRecordBuilder()..update(updates))._build();

  _$SearchRecord._({this.id, this.searchTime, this.search, this.reference})
      : super._();

  @override
  SearchRecord rebuild(void Function(SearchRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchRecordBuilder toBuilder() => new SearchRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchRecord &&
        id == other.id &&
        searchTime == other.searchTime &&
        search == other.search &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), searchTime.hashCode), search.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchRecord')
          ..add('id', id)
          ..add('searchTime', searchTime)
          ..add('search', search)
          ..add('reference', reference))
        .toString();
  }
}

class SearchRecordBuilder
    implements Builder<SearchRecord, SearchRecordBuilder> {
  _$SearchRecord _$v;

  DocumentReference<Object> _id;
  DocumentReference<Object> get id => _$this._id;
  set id(DocumentReference<Object> id) => _$this._id = id;

  DateTime _searchTime;
  DateTime get searchTime => _$this._searchTime;
  set searchTime(DateTime searchTime) => _$this._searchTime = searchTime;

  String _search;
  String get search => _$this._search;
  set search(String search) => _$this._search = search;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SearchRecordBuilder() {
    SearchRecord._initializeBuilder(this);
  }

  SearchRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _searchTime = $v.searchTime;
      _search = $v.search;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchRecord;
  }

  @override
  void update(void Function(SearchRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchRecord build() => _build();

  _$SearchRecord _build() {
    final _$result = _$v ??
        new _$SearchRecord._(
            id: id,
            searchTime: searchTime,
            search: search,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
