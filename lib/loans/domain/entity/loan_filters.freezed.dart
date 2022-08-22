// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loan_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoanFilters {
  String? get searchQuery => throw _privateConstructorUsedError;
  LoanStatus? get status => throw _privateConstructorUsedError;
  DateTime? get fromDate => throw _privateConstructorUsedError;
  DateTime? get toDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanFiltersCopyWith<LoanFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanFiltersCopyWith<$Res> {
  factory $LoanFiltersCopyWith(
          LoanFilters value, $Res Function(LoanFilters) then) =
      _$LoanFiltersCopyWithImpl<$Res>;
  $Res call(
      {String? searchQuery,
      LoanStatus? status,
      DateTime? fromDate,
      DateTime? toDate});
}

/// @nodoc
class _$LoanFiltersCopyWithImpl<$Res> implements $LoanFiltersCopyWith<$Res> {
  _$LoanFiltersCopyWithImpl(this._value, this._then);

  final LoanFilters _value;
  // ignore: unused_field
  final $Res Function(LoanFilters) _then;

  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? status = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoanStatus?,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoanFiltersCopyWith<$Res>
    implements $LoanFiltersCopyWith<$Res> {
  factory _$$_LoanFiltersCopyWith(
          _$_LoanFilters value, $Res Function(_$_LoanFilters) then) =
      __$$_LoanFiltersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? searchQuery,
      LoanStatus? status,
      DateTime? fromDate,
      DateTime? toDate});
}

/// @nodoc
class __$$_LoanFiltersCopyWithImpl<$Res> extends _$LoanFiltersCopyWithImpl<$Res>
    implements _$$_LoanFiltersCopyWith<$Res> {
  __$$_LoanFiltersCopyWithImpl(
      _$_LoanFilters _value, $Res Function(_$_LoanFilters) _then)
      : super(_value, (v) => _then(v as _$_LoanFilters));

  @override
  _$_LoanFilters get _value => super._value as _$_LoanFilters;

  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? status = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_$_LoanFilters(
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoanStatus?,
      fromDate: fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_LoanFilters implements _LoanFilters {
  const _$_LoanFilters(
      {this.searchQuery, this.status, this.fromDate, this.toDate});

  @override
  final String? searchQuery;
  @override
  final LoanStatus? status;
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;

  @override
  String toString() {
    return 'LoanFilters(searchQuery: $searchQuery, status: $status, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoanFilters &&
            const DeepCollectionEquality()
                .equals(other.searchQuery, searchQuery) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.fromDate, fromDate) &&
            const DeepCollectionEquality().equals(other.toDate, toDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchQuery),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fromDate),
      const DeepCollectionEquality().hash(toDate));

  @JsonKey(ignore: true)
  @override
  _$$_LoanFiltersCopyWith<_$_LoanFilters> get copyWith =>
      __$$_LoanFiltersCopyWithImpl<_$_LoanFilters>(this, _$identity);
}

abstract class _LoanFilters implements LoanFilters {
  const factory _LoanFilters(
      {final String? searchQuery,
      final LoanStatus? status,
      final DateTime? fromDate,
      final DateTime? toDate}) = _$_LoanFilters;

  @override
  String? get searchQuery;
  @override
  LoanStatus? get status;
  @override
  DateTime? get fromDate;
  @override
  DateTime? get toDate;
  @override
  @JsonKey(ignore: true)
  _$$_LoanFiltersCopyWith<_$_LoanFilters> get copyWith =>
      throw _privateConstructorUsedError;
}
