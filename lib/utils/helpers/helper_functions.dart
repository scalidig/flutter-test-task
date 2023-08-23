import 'package:flutter/material.dart';
import 'package:task_equipment/utils/resources/app_colors.dart';

class HelperFunctions {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.buttonColor,
        content: Text(message),
      ),
    );
  }
}
