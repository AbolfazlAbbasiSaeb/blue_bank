import 'package:blue_bank/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(RunApp());

class RunApp extends StatefulWidget {
  const RunApp({super.key});

  @override
  State<RunApp> createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: FirstHome(),
    );
  }
}
