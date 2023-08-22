import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/constants/mock_data.dart';
import 'package:task_equipment/utils/resources/app_colors.dart';
import 'package:task_equipment/utils/resources/app_text_styles.dart';
import 'package:task_equipment/views/equipment/components/image_card.dart';

import 'cubit/equipment_cubit.dart';

class EquipmentView extends StatelessWidget {
  const EquipmentView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _listOfEquipments(),
        ],
      ));

  Widget _listOfEquipments() => BlocBuilder<EquipmentCubit, EquipmentState>(
        builder: (context, state) {
          if (state.availableEquipment.isNotEmpty) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2 / 3,
                  crossAxisCount: 3, // Number of items per row
                ),
                itemCount: MockData.availableEquipment.length,
                // Total number of items
                itemBuilder: (context, index) {
                  return _equipment(state.availableEquipment[index],index, context);
                },
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );

  Widget _equipment(EquipmentDataModel item,int index,BuildContext context) {

    return Column(
        children: [
          Expanded(
            flex: 4,
            child: ImageCard(
                path: item.imagePath ?? "",
                isSelected: item.isSelected??false,
                onChange: (val) {
                  print("SOBI DADA LOOKING FOR INFO ${val}");
                  BlocProvider.of<EquipmentCubit>(context, listen: false)
                      .updateAvailableData(index, val!);
                }),
          ),
          Expanded(
            child: Text(MockData.availableEquipment[index].title ?? '',
                style: AppTextStyles.titleStyle.copyWith(color: Colors.white)),
          )
        ],
      );
  }
}
