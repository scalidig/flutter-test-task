import 'package:flutter/material.dart';
import 'package:task_equipment/utils/constants/asset_paths.dart';
import 'package:task_equipment/utils/resources/app_colors.dart';

class ImageCard extends StatelessWidget {
  final String path;
  final bool isSelected;
  final Function(bool?) onChange;

  const ImageCard(
      {super.key,
      required this.path,
      required this.isSelected,
      required this.onChange});

  @override
  Widget build(BuildContext context) => Stack(children: [
      Image.asset(AssetPaths.bodyWeight),
      Positioned(
          bottom: 20,
          right: 10,
          child: SizedBox(
            height: 15,
            width: 15,
            child: Checkbox(
              value: isSelected,activeColor: AppColors.backgroundColor,checkColor: Colors.green,
              onChanged: onChange,
              shape: const CircleBorder(),
            ),
          ))
    ]);
}
