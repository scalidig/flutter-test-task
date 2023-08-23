import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_equipment/models/equipment/equipment_data_model.dart';
import 'package:task_equipment/utils/resources/app_text_styles.dart';
import 'package:task_equipment/views/equipment/components/image_card.dart';
import 'package:task_equipment/views/equipment/cubit/equipment_cubit.dart';

class EquipmentCard extends StatelessWidget {
  final EquipmentDataModel item;
  final int index;

  const EquipmentCard({super.key, required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: ImageCard(
            path: item.imagePath ?? "",
            isSelected: item.isSelected!,
            onChange: (val) {
              BlocProvider.of<EquipmentCubit>(context, listen: false)
                  .updateAvailableData(context, index, val!);
            },
          ),
        ),
        Expanded(
          child: Text(
            item.title ?? '',
            style: AppTextStyles.titleStyle.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
