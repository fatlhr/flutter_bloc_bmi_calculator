import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bmi_page.dart';
import 'bloc/calculate_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculateBloc(),
      child: const MaterialApp(
        home: BmiPage(),
      ),
    );
  }
}
