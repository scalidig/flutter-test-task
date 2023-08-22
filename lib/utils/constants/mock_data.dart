import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/asset_paths.dart';

class MockData {
  static final List<String> _titlesOfAvailableEquipment = [
    'Body Weight',
    'Dumbbells',
    'Bands',
    'Machines',
    'Rods',
    'Plates'
  ];
  static List<EquipmentDataModel> availableEquipment = List.generate(
      _titlesOfAvailableEquipment.length,
      (index) => EquipmentDataModel(
          id: index,
          isSelected: false,
          title: _titlesOfAvailableEquipment[index],
          imagePath: AssetPaths.bodyWeight));
}
