import 'package:flutter/material.dart';
import 'package:task_equipment/utils/resources/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color? color;
  final Gradient? gradient;
  final String text;
  final TextStyle textStyle;
  final bool fullWidth;
  final Icon? icon;
  final MainAxisAlignment iconAlignment;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.width = 160.0,
    this.height = 50.0,
    this.color,
    this.gradient,
    required this.text,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 16.0),
    this.fullWidth = false,
    this.icon,
    this.iconAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonContent = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.titleStyle,
        ),
        if (icon != null) icon!,
      ],
    );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: fullWidth ? double.infinity : width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: gradient,
          color: color,
        ),
        child: Center(child: buttonContent),
      ),
    );
  }
}
