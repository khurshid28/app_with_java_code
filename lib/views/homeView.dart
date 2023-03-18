import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import "dart:async";

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final platformMethodChannel = MethodChannel("khurshid/java");
  Future managePower() async {
    String _message;
    try {
      final String result =
          await platformMethodChannel.invokeMethod("powerManage");
      _message = result;
    } on PlatformException catch (e) {
      _message = "Can't do native stuff ${e.message}.";
    }
    print(">>>>>>>>>>>>> powerManage  >>>>>>>>>>>>>");
    print(_message);
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>");
  }
  
   Future takePhoto()async{
    String _message;
    try {
      final String result =
          await platformMethodChannel.invokeMethod("takePhoto");
      _message = result;
    } on PlatformException catch (e) {
      _message = "Can't do native stuff ${e.message}.";
    }
    print(">>>>>>>>>>>>>> takePhoto  >>>>>>>>>>>>  ");
    print(_message);
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>");
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: managePower,
              child: Text("Power Manager"),
            ),
            SizedBox(
              height: 20,
            ),
             ElevatedButton(
              onPressed: takePhoto,
              child: Text("Power Manager"),
            ),
          ],
        ),
      ),
    );
  }
}
