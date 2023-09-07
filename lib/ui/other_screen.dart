import 'package:flutter/material.dart';
import 'package:solid/data/repository/app_reposotry.dart';
import 'package:solid/data/service.dart';
class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  AppRepository appRepository = AppRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other screen"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(children: [
          Text(getIt.get<AppRepository>().appSignature),
      ],),
    );
  }
}
