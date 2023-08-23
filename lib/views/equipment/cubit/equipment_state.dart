part of 'equipment_cubit.dart';

@freezed
class EquipmentState with _$EquipmentState {
  const factory EquipmentState.fetchEquipments(
      List<EquipmentDataModel> availableEquipment) = FetchEquipments;

  const factory EquipmentState.loading() = Loading;
}
