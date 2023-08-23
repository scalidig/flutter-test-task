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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EquipmentDataModel> availableEquipment)
        fetchEquipments,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEquipments value) fetchEquipments,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEquipments value)? fetchEquipments,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEquipments value)? fetchEquipments,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchEquipmentsCopyWith<$Res> {
  factory _$$FetchEquipmentsCopyWith(
          _$FetchEquipments value, $Res Function(_$FetchEquipments) then) =
      __$$FetchEquipmentsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EquipmentDataModel> availableEquipment});
}

/// @nodoc
class __$$FetchEquipmentsCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$FetchEquipments>
    implements _$$FetchEquipmentsCopyWith<$Res> {
  __$$FetchEquipmentsCopyWithImpl(
      _$FetchEquipments _value, $Res Function(_$FetchEquipments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
  }) {
    return _then(_$FetchEquipments(
      null == availableEquipment
          ? _value._availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentDataModel>,
    ));
  }
}

/// @nodoc

class _$FetchEquipments implements FetchEquipments {
  const _$FetchEquipments(final List<EquipmentDataModel> availableEquipment)
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
    return 'EquipmentState.fetchEquipments(availableEquipment: $availableEquipment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEquipments &&
            const DeepCollectionEquality()
                .equals(other._availableEquipment, _availableEquipment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availableEquipment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEquipmentsCopyWith<_$FetchEquipments> get copyWith =>
      __$$FetchEquipmentsCopyWithImpl<_$FetchEquipments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EquipmentDataModel> availableEquipment)
        fetchEquipments,
    required TResult Function() loading,
  }) {
    return fetchEquipments(availableEquipment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult? Function()? loading,
  }) {
    return fetchEquipments?.call(availableEquipment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (fetchEquipments != null) {
      return fetchEquipments(availableEquipment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEquipments value) fetchEquipments,
    required TResult Function(Loading value) loading,
  }) {
    return fetchEquipments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEquipments value)? fetchEquipments,
    TResult? Function(Loading value)? loading,
  }) {
    return fetchEquipments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEquipments value)? fetchEquipments,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (fetchEquipments != null) {
      return fetchEquipments(this);
    }
    return orElse();
  }
}

abstract class FetchEquipments implements EquipmentState {
  const factory FetchEquipments(
      final List<EquipmentDataModel> availableEquipment) = _$FetchEquipments;

  List<EquipmentDataModel> get availableEquipment;
  @JsonKey(ignore: true)
  _$$FetchEquipmentsCopyWith<_$FetchEquipments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'EquipmentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EquipmentDataModel> availableEquipment)
        fetchEquipments,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EquipmentDataModel> availableEquipment)?
        fetchEquipments,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEquipments value) fetchEquipments,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEquipments value)? fetchEquipments,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEquipments value)? fetchEquipments,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements EquipmentState {
  const factory Loading() = _$Loading;
}
