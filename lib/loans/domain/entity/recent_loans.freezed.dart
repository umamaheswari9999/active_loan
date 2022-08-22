// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_loans.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentLoans {
  List<Loan> get draftLoans => throw _privateConstructorUsedError;
  List<Loan> get preApprovedLoans => throw _privateConstructorUsedError;
  List<Loan> get disbursedLoans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentLoansCopyWith<RecentLoans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentLoansCopyWith<$Res> {
  factory $RecentLoansCopyWith(
          RecentLoans value, $Res Function(RecentLoans) then) =
      _$RecentLoansCopyWithImpl<$Res>;
  $Res call(
      {List<Loan> draftLoans,
      List<Loan> preApprovedLoans,
      List<Loan> disbursedLoans});
}

/// @nodoc
class _$RecentLoansCopyWithImpl<$Res> implements $RecentLoansCopyWith<$Res> {
  _$RecentLoansCopyWithImpl(this._value, this._then);

  final RecentLoans _value;
  // ignore: unused_field
  final $Res Function(RecentLoans) _then;

  @override
  $Res call({
    Object? draftLoans = freezed,
    Object? preApprovedLoans = freezed,
    Object? disbursedLoans = freezed,
  }) {
    return _then(_value.copyWith(
      draftLoans: draftLoans == freezed
          ? _value.draftLoans
          : draftLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
      preApprovedLoans: preApprovedLoans == freezed
          ? _value.preApprovedLoans
          : preApprovedLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
      disbursedLoans: disbursedLoans == freezed
          ? _value.disbursedLoans
          : disbursedLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
    ));
  }
}

/// @nodoc
abstract class _$$_RecentLoansCopyWith<$Res>
    implements $RecentLoansCopyWith<$Res> {
  factory _$$_RecentLoansCopyWith(
          _$_RecentLoans value, $Res Function(_$_RecentLoans) then) =
      __$$_RecentLoansCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Loan> draftLoans,
      List<Loan> preApprovedLoans,
      List<Loan> disbursedLoans});
}

/// @nodoc
class __$$_RecentLoansCopyWithImpl<$Res> extends _$RecentLoansCopyWithImpl<$Res>
    implements _$$_RecentLoansCopyWith<$Res> {
  __$$_RecentLoansCopyWithImpl(
      _$_RecentLoans _value, $Res Function(_$_RecentLoans) _then)
      : super(_value, (v) => _then(v as _$_RecentLoans));

  @override
  _$_RecentLoans get _value => super._value as _$_RecentLoans;

  @override
  $Res call({
    Object? draftLoans = freezed,
    Object? preApprovedLoans = freezed,
    Object? disbursedLoans = freezed,
  }) {
    return _then(_$_RecentLoans(
      draftLoans: draftLoans == freezed
          ? _value._draftLoans
          : draftLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
      preApprovedLoans: preApprovedLoans == freezed
          ? _value._preApprovedLoans
          : preApprovedLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
      disbursedLoans: disbursedLoans == freezed
          ? _value._disbursedLoans
          : disbursedLoans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
    ));
  }
}

/// @nodoc

class _$_RecentLoans implements _RecentLoans {
  const _$_RecentLoans(
      {required final List<Loan> draftLoans,
      required final List<Loan> preApprovedLoans,
      required final List<Loan> disbursedLoans})
      : _draftLoans = draftLoans,
        _preApprovedLoans = preApprovedLoans,
        _disbursedLoans = disbursedLoans;

  final List<Loan> _draftLoans;
  @override
  List<Loan> get draftLoans {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_draftLoans);
  }

  final List<Loan> _preApprovedLoans;
  @override
  List<Loan> get preApprovedLoans {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preApprovedLoans);
  }

  final List<Loan> _disbursedLoans;
  @override
  List<Loan> get disbursedLoans {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disbursedLoans);
  }

  @override
  String toString() {
    return 'RecentLoans(draftLoans: $draftLoans, preApprovedLoans: $preApprovedLoans, disbursedLoans: $disbursedLoans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentLoans &&
            const DeepCollectionEquality()
                .equals(other._draftLoans, _draftLoans) &&
            const DeepCollectionEquality()
                .equals(other._preApprovedLoans, _preApprovedLoans) &&
            const DeepCollectionEquality()
                .equals(other._disbursedLoans, _disbursedLoans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_draftLoans),
      const DeepCollectionEquality().hash(_preApprovedLoans),
      const DeepCollectionEquality().hash(_disbursedLoans));

  @JsonKey(ignore: true)
  @override
  _$$_RecentLoansCopyWith<_$_RecentLoans> get copyWith =>
      __$$_RecentLoansCopyWithImpl<_$_RecentLoans>(this, _$identity);
}

abstract class _RecentLoans implements RecentLoans {
  const factory _RecentLoans(
      {required final List<Loan> draftLoans,
      required final List<Loan> preApprovedLoans,
      required final List<Loan> disbursedLoans}) = _$_RecentLoans;

  @override
  List<Loan> get draftLoans;
  @override
  List<Loan> get preApprovedLoans;
  @override
  List<Loan> get disbursedLoans;
  @override
  @JsonKey(ignore: true)
  _$$_RecentLoansCopyWith<_$_RecentLoans> get copyWith =>
      throw _privateConstructorUsedError;
}
