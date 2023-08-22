// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentDataModel _$EquipmentDataModelFromJson(Map<String, dynamic> json) {
  return _EquipmentDataModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentDataModel {
  String? get title => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentDataModelCopyWith<EquipmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDataModelCopyWith<$Res> {
  factory $EquipmentDataModelCopyWith(
          EquipmentDataModel value, $Res Function(EquipmentDataModel) then) =
      _$EquipmentDataModelCopyWithImpl<$Res, EquipmentDataModel>;
  @useResult
  $Res call({String? title, String? imagePath, int? id, bool? isSelected});
}

/// @nodoc
class _$EquipmentDataModelCopyWithImpl<$Res, $Val extends EquipmentDataModel>
    implements $EquipmentDataModelCopyWith<$Res> {
  _$EquipmentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? imagePath = freezed,
    Object? id = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentDataModelCopyWith<$Res>
    implements $EquipmentDataModelCopyWith<$Res> {
  factory _$$_EquipmentDataModelCopyWith(_$_EquipmentDataModel value,
          $Res Function(_$_EquipmentDataModel) then) =
      __$$_EquipmentDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? imagePath, int? id, bool? isSelected});
}

/// @nodoc
class __$$_EquipmentDataModelCopyWithImpl<$Res>
    extends _$EquipmentDataModelCopyWithImpl<$Res, _$_EquipmentDataModel>
    implements _$$_EquipmentDataModelCopyWith<$Res> {
  __$$_EquipmentDataModelCopyWithImpl(
      _$_EquipmentDataModel _value, $Res Function(_$_EquipmentDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? imagePath = freezed,
    Object? id = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$_EquipmentDataModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EquipmentDataModel implements _EquipmentDataModel {
  const _$_EquipmentDataModel(
      {this.title, this.imagePath, this.id, this.isSelected});

  factory _$_EquipmentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentDataModelFromJson(json);

  @override
  final String? title;
  @override
  final String? imagePath;
  @override
  final int? id;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'EquipmentDataModel(title: $title, imagePath: $imagePath, id: $id, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentDataModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imagePath, id, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentDataModelCopyWith<_$_EquipmentDataModel> get copyWith =>
      __$$_EquipmentDataModelCopyWithImpl<_$_EquipmentDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentDataModelToJson(
      this,
    );
  }
}

abstract class _EquipmentDataModel implements EquipmentDataModel {
  const factory _EquipmentDataModel(
      {final String? title,
      final String? imagePath,
      final int? id,
      final bool? isSelected}) = _$_EquipmentDataModel;

  factory _EquipmentDataModel.fromJson(Map<String, dynamic> json) =
      _$_EquipmentDataModel.fromJson;

  @override
  String? get title;
  @override
  String? get imagePath;
  @override
  int? get id;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentDataModelCopyWith<_$_EquipmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
