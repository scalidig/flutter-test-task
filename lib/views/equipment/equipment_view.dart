import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_equipment/utils/constants/mock_data.dart';
import 'package:task_equipment/utils/helpers/helper_functions.dart';
import 'package:task_equipment/utils/resources/app_colors.dart';
import 'package:task_equipment/views/equipment/components/equipment_card.dart';
import 'package:task_equipment/widgets/custom_button.dart';

import 'cubit/equipment_cubit.dart';

class EquipmentView extends StatelessWidget {
  const EquipmentView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: _bottomBar(context),
      body: _listOfEquipments());

  Widget _listOfEquipments() => BlocBuilder<EquipmentCubit, EquipmentState>(
        builder: (context, state) {
          if (state is FetchEquipments && state.availableEquipment.isNotEmpty) {
            return Align(
              alignment: Alignment.center,
              child: Padding(
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
                    return EquipmentCard(
                        item: state.availableEquipment[index], index: index);
                  },
                ),
              ),
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: AppColors.buttonColor,
            ));
          }
        },
      );

  Widget _bottomBar(BuildContext context) => SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(children: [
            BlocBuilder<EquipmentCubit, EquipmentState>(
              builder: (context, state) {
                return Expanded(
                    child: CustomButton(
                        onPressed: () => BlocProvider.of<EquipmentCubit>(
                                context,
                                listen: false)
                            .toggleLoader(),
                        text: state is FetchEquipments
                            ? "Show Loader"
                            : "Hide Loader",
                        color: AppColors.buttonColor));
              },
            ),
            const SizedBox(width: 20),
            Expanded(
                child: CustomButton(
                    onPressed: () {
                      HelperFunctions.showSnackBar(
                          context, "Hello Welcome to Equipment Page");
                    },
                    text: "Show Message",
                    color: AppColors.buttonColor)),
          ]),
        ),
      );
}
