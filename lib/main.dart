import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_equipment/views/equipment/cubit/equipment_cubit.dart';
import 'package:task_equipment/views/equipment/equipment_view.dart';

import 'utils/managers/shared_preference_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: BlocProvider(
      create: (context) => EquipmentCubit(),
      child: const EquipmentView(),
    ));
  }
}
