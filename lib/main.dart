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
  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  int result=0,numOne=0,numTwo=0;

  add(){
    setState(() {
      numOne = int.parse(controllerOne.text);
      numTwo = int.parse(controllerTwo.text);
      result = numOne! + numTwo!;
    });
  }
  sub(){
    setState(() {
      numOne = int.parse(controllerOne.text);
      numTwo = int.parse(controllerTwo.text);
      result = numOne! - numTwo!;
    });
  }
  div(){
    setState(() {
      numOne = int.parse(controllerOne.text);
      numTwo = int.parse(controllerTwo.text);
      result = numOne! ~/ numTwo!;
    });
  }
  mul(){
    setState(() {
      numOne = int.parse(controllerOne.text);
      numTwo = int.parse(controllerTwo.text);
      result = numOne! * numTwo!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF98E4FF),
          title: const Text("Simple cal",style: TextStyle(color: Color(0xFF687EFF),fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Container(
          color: const Color(0xFFD6FFFB),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(height: 40),
                TextField(
                  controller: controllerOne,
                  decoration: InputDecoration(
                      labelText: "Enter num 1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),),
                Container(height: 20),
                TextField(
                  controller: controllerTwo,
                  decoration: InputDecoration(
                      labelText: "Enter num 2",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),),
                Container(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  children: [
                    ElevatedButton(onPressed: (){
                      add();
                      controllerOne.clear();
                      controllerTwo.clear();
                    }, style: ElevatedButton.styleFrom(fixedSize: const Size(150, 70),backgroundColor: const Color(0xFF80B3FF)), child: const Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF687EFF)),),),
                    ElevatedButton(onPressed: (){
                      sub();
                      controllerOne.clear();
                      controllerTwo.clear();
                    }, style: ElevatedButton.styleFrom(fixedSize: const Size(150, 70),backgroundColor: const Color(0xFF80B3FF)), child: const Text("-",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold ,color: Color(0xFF687EFF)),),),
                    ElevatedButton(onPressed: (){
                      div();
                      controllerOne.clear();
                      controllerTwo.clear();
                    }, style: ElevatedButton.styleFrom(fixedSize: const Size(150, 70),backgroundColor: const Color(0xFF80B3FF)), child: const Text("/",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF687EFF)),),),
                    ElevatedButton(onPressed: (){
                      mul();
                      controllerOne.clear();
                      controllerTwo.clear();
                    }, style: ElevatedButton.styleFrom(fixedSize: const Size(150, 70),backgroundColor: const Color(0xFF80B3FF)), child: const Text("X",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xFF687EFF)),),),
                  ],
                ),
                Container(height: 20),
                Text("Result = $result",style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Color(0xFF687EFF)),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

