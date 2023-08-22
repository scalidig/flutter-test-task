// To parse this JSON data, do
//
//     final equipmentDataModel = equipmentDataModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'equipment_data_model.freezed.dart';
part 'equipment_data_model.g.dart';

List<EquipmentDataModel> equipmentDataModelFromJson(String str) => List<EquipmentDataModel>.from(json.decode(str).map((x) => EquipmentDataModel.fromJson(x)));

String equipmentDataModelToJson(List<EquipmentDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class EquipmentDataModel with _$EquipmentDataModel {
  const factory EquipmentDataModel({
    String? title,
    String? imagePath,
    int? id,
    bool? isSelected,
  }) = _EquipmentDataModel;

  factory EquipmentDataModel.fromJson(Map<String, dynamic> json) => _$EquipmentDataModelFromJson(json);
}
