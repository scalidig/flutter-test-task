import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/asset_paths.dart';

class MockData {
  static final List<String> _titlesOfAvailableEquipment = [
    'Bodyweight',
    'Dumbbells',
    'Bands',
    'Machines',
    'Rods',
    'Plates'
  ];
  static final List<EquipmentDataModel> availableEquipment = List.unmodifiable(
      List.generate(
          _titlesOfAvailableEquipment.length,
          (index) => EquipmentDataModel(
              id: index,
              isSelected: false,
              title: _titlesOfAvailableEquipment[index],
              imagePath: AssetPaths.bodyWeight)));
}
