import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Counter App',style: TextStyle(color: Colors.white),),),
          body: Center(
            child: Text(
              '$num',style: TextStyle(color: Colors.black,fontSize: 50),
            ),

          ),
          floatingActionButton: Container(
            child: FloatingActionButton(onPressed: () {
              setState(() {
                num++;
              });
            },
              backgroundColor: Colors.blue,
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),

        )  );
  }
}


int num=0;