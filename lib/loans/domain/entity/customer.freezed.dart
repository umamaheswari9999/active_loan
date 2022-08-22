// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Customer {
  ClientMaster get master => throw _privateConstructorUsedError;
  List<CustomerLocation> get locations => throw _privateConstructorUsedError;
  List<CustomerBank> get banks => throw _privateConstructorUsedError;
  List<CustomerMandate> get mandates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {ClientMaster master,
      List<CustomerLocation> locations,
      List<CustomerBank> banks,
      List<CustomerMandate> mandates});

  $ClientMasterCopyWith<$Res> get master;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? master = freezed,
    Object? locations = freezed,
    Object? banks = freezed,
    Object? mandates = freezed,
  }) {
    return _then(_value.copyWith(
      master: master == freezed
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as ClientMaster,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<CustomerLocation>,
      banks: banks == freezed
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<CustomerBank>,
      mandates: mandates == freezed
          ? _value.mandates
          : mandates // ignore: cast_nullable_to_non_nullable
              as List<CustomerMandate>,
    ));
  }

  @override
  $ClientMasterCopyWith<$Res> get master {
    return $ClientMasterCopyWith<$Res>(_value.master, (value) {
      return _then(_value.copyWith(master: value));
    });
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {ClientMaster master,
      List<CustomerLocation> locations,
      List<CustomerBank> banks,
      List<CustomerMandate> mandates});

  @override
  $ClientMasterCopyWith<$Res> get master;
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, (v) => _then(v as _$_Customer));

  @override
  _$_Customer get _value => super._value as _$_Customer;

  @override
  $Res call({
    Object? master = freezed,
    Object? locations = freezed,
    Object? banks = freezed,
    Object? mandates = freezed,
  }) {
    return _then(_$_Customer(
      master: master == freezed
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as ClientMaster,
      locations: locations == freezed
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<CustomerLocation>,
      banks: banks == freezed
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<CustomerBank>,
      mandates: mandates == freezed
          ? _value._mandates
          : mandates // ignore: cast_nullable_to_non_nullable
              as List<CustomerMandate>,
    ));
  }
}

/// @nodoc

class _$_Customer implements _Customer {
  const _$_Customer(
      {required this.master,
      required final List<CustomerLocation> locations,
      required final List<CustomerBank> banks,
      required final List<CustomerMandate> mandates})
      : _locations = locations,
        _banks = banks,
        _mandates = mandates;

  @override
  final ClientMaster master;
  final List<CustomerLocation> _locations;
  @override
  List<CustomerLocation> get locations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<CustomerBank> _banks;
  @override
  List<CustomerBank> get banks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  final List<CustomerMandate> _mandates;
  @override
  List<CustomerMandate> get mandates {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mandates);
  }

  @override
  String toString() {
    return 'Customer(master: $master, locations: $locations, banks: $banks, mandates: $mandates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            const DeepCollectionEquality().equals(other.master, master) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            const DeepCollectionEquality().equals(other._mandates, _mandates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(master),
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_banks),
      const DeepCollectionEquality().hash(_mandates));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final ClientMaster master,
      required final List<CustomerLocation> locations,
      required final List<CustomerBank> banks,
      required final List<CustomerMandate> mandates}) = _$_Customer;

  @override
  ClientMaster get master;
  @override
  List<CustomerLocation> get locations;
  @override
  List<CustomerBank> get banks;
  @override
  List<CustomerMandate> get mandates;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
