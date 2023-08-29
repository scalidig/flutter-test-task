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

  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        SizedBox(
                            width: 40,
                            height: 40,
                            child: CircularProgressIndicator(
                                color: AppColors.buttonColor))
                      ]),
                    )
                  ]));
        });
  }
}
