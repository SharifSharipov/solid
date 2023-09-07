import 'package:flutter/material.dart';
import 'package:solid/data/repository/app_reposotry.dart';
import 'package:solid/data/service.dart';
import 'package:solid/ui/other_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  AppRepository appRepository = AppRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Depenency Injection"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(getIt.get<AppRepository>().appName),
          IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return OtherScreen();
              }));
            },
            icon: const Align(
                alignment: Alignment.center,
                child: Center(
                    child: Icon(Icons.navigation_outlined,),)),
          ),
        ],
      ),
    );
  }
}
