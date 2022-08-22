// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emi_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmiPlan {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get tenureInMonths => throw _privateConstructorUsedError;
  int get rateOfInterest => throw _privateConstructorUsedError;
  int get downPayment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmiPlanCopyWith<EmiPlan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmiPlanCopyWith<$Res> {
  factory $EmiPlanCopyWith(EmiPlan value, $Res Function(EmiPlan) then) =
      _$EmiPlanCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int tenureInMonths,
      int rateOfInterest,
      int downPayment});
}

/// @nodoc
class _$EmiPlanCopyWithImpl<$Res> implements $EmiPlanCopyWith<$Res> {
  _$EmiPlanCopyWithImpl(this._value, this._then);

  final EmiPlan _value;
  // ignore: unused_field
  final $Res Function(EmiPlan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenureInMonths = freezed,
    Object? rateOfInterest = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tenureInMonths: tenureInMonths == freezed
          ? _value.tenureInMonths
          : tenureInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      rateOfInterest: rateOfInterest == freezed
          ? _value.rateOfInterest
          : rateOfInterest // ignore: cast_nullable_to_non_nullable
              as int,
      downPayment: downPayment == freezed
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EmiPlanCopyWith<$Res> implements $EmiPlanCopyWith<$Res> {
  factory _$$_EmiPlanCopyWith(
          _$_EmiPlan value, $Res Function(_$_EmiPlan) then) =
      __$$_EmiPlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int tenureInMonths,
      int rateOfInterest,
      int downPayment});
}

/// @nodoc
class __$$_EmiPlanCopyWithImpl<$Res> extends _$EmiPlanCopyWithImpl<$Res>
    implements _$$_EmiPlanCopyWith<$Res> {
  __$$_EmiPlanCopyWithImpl(_$_EmiPlan _value, $Res Function(_$_EmiPlan) _then)
      : super(_value, (v) => _then(v as _$_EmiPlan));

  @override
  _$_EmiPlan get _value => super._value as _$_EmiPlan;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenureInMonths = freezed,
    Object? rateOfInterest = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_$_EmiPlan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tenureInMonths: tenureInMonths == freezed
          ? _value.tenureInMonths
          : tenureInMonths // ignore: cast_nullable_to_non_nullable
              as int,
      rateOfInterest: rateOfInterest == freezed
          ? _value.rateOfInterest
          : rateOfInterest // ignore: cast_nullable_to_non_nullable
              as int,
      downPayment: downPayment == freezed
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EmiPlan implements _EmiPlan {
  const _$_EmiPlan(
      {required this.id,
      required this.name,
      required this.tenureInMonths,
      required this.rateOfInterest,
      required this.downPayment});

  @override
  final String id;
  @override
  final String name;
  @override
  final int tenureInMonths;
  @override
  final int rateOfInterest;
  @override
  final int downPayment;

  @override
  String toString() {
    return 'EmiPlan(id: $id, name: $name, tenureInMonths: $tenureInMonths, rateOfInterest: $rateOfInterest, downPayment: $downPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmiPlan &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.tenureInMonths, tenureInMonths) &&
            const DeepCollectionEquality()
                .equals(other.rateOfInterest, rateOfInterest) &&
            const DeepCollectionEquality()
                .equals(other.downPayment, downPayment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(tenureInMonths),
      const DeepCollectionEquality().hash(rateOfInterest),
      const DeepCollectionEquality().hash(downPayment));

  @JsonKey(ignore: true)
  @override
  _$$_EmiPlanCopyWith<_$_EmiPlan> get copyWith =>
      __$$_EmiPlanCopyWithImpl<_$_EmiPlan>(this, _$identity);
}

abstract class _EmiPlan implements EmiPlan {
  const factory _EmiPlan(
      {required final String id,
      required final String name,
      required final int tenureInMonths,
      required final int rateOfInterest,
      required final int downPayment}) = _$_EmiPlan;

  @override
  String get id;
  @override
  String get name;
  @override
  int get tenureInMonths;
  @override
  int get rateOfInterest;
  @override
  int get downPayment;
  @override
  @JsonKey(ignore: true)
  _$$_EmiPlanCopyWith<_$_EmiPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
