import 'package:flutter/material.dart';
import 'package:task_equipment/utils/resources/app_colors.dart';

class ImageCard extends StatelessWidget {
  final String path;
  final bool isSelected;
  final Function(bool?) onChange;

  const ImageCard({
    Key? key,
    required this.path,
    required this.isSelected,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChange(!isSelected); // Toggle the selection on tap
      },
      child: AnimatedOpacity(
        opacity: isSelected ? 0.6 : 1.0,
        duration: const Duration(milliseconds: 300),
        child: Stack(
          children: [
            Image.asset(path),
            Positioned(
              bottom: 20,
              right: 10,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: SizedBox(
                  key: ValueKey<bool>(isSelected),
                  height: 15,
                  width: 15,
                  child: Checkbox(
                    value: isSelected,
                    activeColor: AppColors.backgroundColor,
                    checkColor: Colors.green,
                    onChanged: onChange,
                    shape: const CircleBorder(),
                  ),
                ),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
