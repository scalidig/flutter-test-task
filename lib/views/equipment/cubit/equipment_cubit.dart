import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/mock_data.dart';
import 'package:task_equipment/utils/helpers/helper_functions.dart';
import 'package:task_equipment/views/equipment/repository/equipment_repository.dart';

part 'equipment_cubit.freezed.dart';
part 'equipment_state.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  EquipmentCubit()
      : super(EquipmentState.fetchEquipments(
            EquipmentRepository.fetchAvailableEquipmentList(
                MockData.availableEquipment)));

  void toggleLoader() {
    if (state is FetchEquipments) {
      emit(const EquipmentState.loading());
    } else if (state is Loading) {
      emit(EquipmentState.fetchEquipments(
          EquipmentRepository.fetchAvailableEquipmentList(
              MockData.availableEquipment))); // Pass your equipment list here
    }
  }

  void updateAvailableData(BuildContext context, int index, bool value) async {
    FetchEquipments fetchEquipments = state as FetchEquipments;
    // var selectedEquipmentsLength = fetchEquipments.availableEquipment
    //     .where((element) => element.isSelected == true)
    //     .toList()
    //     .length;
    // if (selectedEquipmentsLength < 3) {
    HelperFunctions.showLoadingDialog(context);
    List<EquipmentDataModel> updatedList =
        fetchEquipments.availableEquipment.map((e) {
      if (e.id == index) {
        var newValue = e.copyWith(isSelected: value);
        return newValue;
      }
      return e;
    }).toList();
    Navigator.pop(context);
    bool isUpdated = await EquipmentRepository.updateStatusOfEquipment(
        updatedList[index], context);
    if (isUpdated == true) {
      emit(fetchEquipments.copyWith(availableEquipment: updatedList));
    } else {
      HelperFunctions.showSnackBar(context, "You can select maximum 3 items");
    }
  }
}
