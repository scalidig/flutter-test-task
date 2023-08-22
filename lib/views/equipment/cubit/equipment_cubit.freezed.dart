// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EquipmentState {
  List<EquipmentDataModel> get availableEquipment =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EquipmentDataModel> availableEquipment)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EquipmentDataModel> availableEquipment)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EquipmentDataModel> availableEquipment)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call({List<EquipmentDataModel> availableEquipment});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
  }) {
    return _then(_value.copyWith(
      availableEquipment: null == availableEquipment
          ? _value.availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EquipmentDataModel> availableEquipment});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
  }) {
    return _then(_$Loaded(
      null == availableEquipment
          ? _value._availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDataModel>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(final List<EquipmentDataModel> availableEquipment)
      : _availableEquipment = availableEquipment;

  final List<EquipmentDataModel> _availableEquipment;
  @override
  List<EquipmentDataModel> get availableEquipment {
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEquipment);
  }

  @override
  String toString() {
    return 'EquipmentState.loaded(availableEquipment: $availableEquipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality()
                .equals(other._availableEquipment, _availableEquipment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availableEquipment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EquipmentDataModel> availableEquipment)
        loaded,
  }) {
    return loaded(availableEquipment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EquipmentDataModel> availableEquipment)? loaded,
  }) {
    return loaded?.call(availableEquipment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EquipmentDataModel> availableEquipment)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(availableEquipment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements EquipmentState {
  const factory Loaded(final List<EquipmentDataModel> availableEquipment) =
      _$Loaded;

  @override
  List<EquipmentDataModel> get availableEquipment;
  @override
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
