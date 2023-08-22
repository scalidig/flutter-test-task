import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/views/equipment/repository/equipment_repository.dart';

part 'equipment_cubit.freezed.dart';

part 'equipment_state.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  EquipmentCubit()
      : super(EquipmentState.loaded(
            EquipmentRepository().fetchAvailableEquipmentList()));

  void updateAvailableData(int index, bool value) {
    List<EquipmentDataModel> updatedList = state.availableEquipment.map((e) {
      if (e.id == index) {
        return e.copyWith(isSelected: value);
      }
      return e;
    }).toList();
    print("SOBI DADA LOOKING FOR INFO in cubit ${updatedList[index].isSelected}");
    emit(state.copyWith(availableEquipment: updatedList));
  }
}
