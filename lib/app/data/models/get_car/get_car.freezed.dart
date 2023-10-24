// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCar _$GetCarFromJson(Map<String, dynamic> json) {
  return _GetCar.fromJson(json);
}

/// @nodoc
mixin _$GetCar {
  List<Car> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCarCopyWith<GetCar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCarCopyWith<$Res> {
  factory $GetCarCopyWith(GetCar value, $Res Function(GetCar) then) =
      _$GetCarCopyWithImpl<$Res, GetCar>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$GetCarCopyWithImpl<$Res, $Val extends GetCar>
    implements $GetCarCopyWith<$Res> {
  _$GetCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCarImplCopyWith<$Res> implements $GetCarCopyWith<$Res> {
  factory _$$GetCarImplCopyWith(
          _$GetCarImpl value, $Res Function(_$GetCarImpl) then) =
      __$$GetCarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$GetCarImplCopyWithImpl<$Res>
    extends _$GetCarCopyWithImpl<$Res, _$GetCarImpl>
    implements _$$GetCarImplCopyWith<$Res> {
  __$$GetCarImplCopyWithImpl(
      _$GetCarImpl _value, $Res Function(_$GetCarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$GetCarImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCarImpl implements _GetCar {
  _$GetCarImpl({final List<Car> cars = const []}) : _cars = cars;

  factory _$GetCarImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCarImplFromJson(json);

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'GetCar(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCarImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCarImplCopyWith<_$GetCarImpl> get copyWith =>
      __$$GetCarImplCopyWithImpl<_$GetCarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCarImplToJson(
      this,
    );
  }
}

abstract class _GetCar implements GetCar {
  factory _GetCar({final List<Car> cars}) = _$GetCarImpl;

  factory _GetCar.fromJson(Map<String, dynamic> json) = _$GetCarImpl.fromJson;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$GetCarImplCopyWith<_$GetCarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
