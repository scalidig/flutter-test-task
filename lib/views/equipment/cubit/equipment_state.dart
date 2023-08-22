part of 'equipment_cubit.dart';

@freezed
class EquipmentState with _$EquipmentState {
  const factory EquipmentState.loaded(List<EquipmentDataModel> availableEquipment) = Loaded;
}
