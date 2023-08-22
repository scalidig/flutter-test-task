// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentDataModel _$$_EquipmentDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_EquipmentDataModel(
      title: json['title'] as String?,
      imagePath: json['imagePath'] as String?,
      id: json['id'] as int?,
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$_EquipmentDataModelToJson(
        _$_EquipmentDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'imagePath': instance.imagePath,
      'id': instance.id,
      'isSelected': instance.isSelected,
    };
