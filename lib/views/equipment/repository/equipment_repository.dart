import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/mock_data.dart';
import 'package:task_equipment/utils/constants/preference_keys.dart';
import 'package:task_equipment/utils/managers/shared_preference_manager.dart';

class EquipmentRepository {
  static List<EquipmentDataModel> fetchAvailableEquipmentList() {
    List<EquipmentDataModel> response = MockData.availableEquipment;

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

  static Future<void> updateStatusOfEquipment(EquipmentDataModel val) async {
    if (SharedPreferencesManager.getString(PreferenceKeys.selectedEquipment)
        .isNotEmpty) {
      {
        List<EquipmentDataModel> preferenceList = equipmentDataModelFromJson(
            SharedPreferencesManager.getString(
                PreferenceKeys.selectedEquipment));

        if (preferenceList.contains(val)) {
          if (val.isSelected == true) {
            int itemIndex = preferenceList.indexOf(val);
            preferenceList[itemIndex] = val;
          } else {
            preferenceList.remove(val);
          }
        } else {
          preferenceList.add(val);
        }

        await SharedPreferencesManager.setString(
            PreferenceKeys.selectedEquipment,
            equipmentDataModelToJson(preferenceList));
      }
    } else {
      List<EquipmentDataModel> preferenceList = [];
      preferenceList.add(val);
      await SharedPreferencesManager.setString(PreferenceKeys.selectedEquipment,
          equipmentDataModelToJson(preferenceList));
    }
  }
}
