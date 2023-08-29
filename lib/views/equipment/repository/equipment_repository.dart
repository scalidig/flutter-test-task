import 'package:flutter/cupertino.dart';
import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/preference_keys.dart';
import 'package:task_equipment/utils/managers/shared_preference_manager.dart';

class EquipmentRepository {
  static List<EquipmentDataModel> fetchAvailableEquipmentList(
      List<EquipmentDataModel> val) {
    final response = List<EquipmentDataModel>.from(val);
    if (SharedPreferencesManager.getString(PreferenceKeys.selectedEquipment)
        .isNotEmpty) {
      List<EquipmentDataModel> preferenceList = equipmentDataModelFromJson(
          SharedPreferencesManager.getString(PreferenceKeys.selectedEquipment));
      for (var element in preferenceList) {
        int itemIndex = response
            .indexWhere((responseElement) => responseElement.id == element.id);

        response[itemIndex] = element;
      }
    }
    return response;
  }

  static Future<bool> updateStatusOfEquipment(
      EquipmentDataModel val, BuildContext context) async {
    if (SharedPreferencesManager.getString(PreferenceKeys.selectedEquipment)
        .isNotEmpty) {
      List<EquipmentDataModel> preferenceList = equipmentDataModelFromJson(
          SharedPreferencesManager.getString(PreferenceKeys.selectedEquipment));
      if (preferenceList.any((element) => element.id == val.id)) {
        preferenceList.removeWhere((element) => element.id == val.id);
      } else {
        if (preferenceList.length < 3) {
          preferenceList.add(val);
        } else {
          return false;
        }
      }

      await SharedPreferencesManager.setString(PreferenceKeys.selectedEquipment,
          equipmentDataModelToJson(preferenceList));

      return true;
    } else {
      List<EquipmentDataModel> preferenceList = [];
      preferenceList.add(val);

      await SharedPreferencesManager.setString(PreferenceKeys.selectedEquipment,
          equipmentDataModelToJson(preferenceList));
      return true;
    }
  }
}
