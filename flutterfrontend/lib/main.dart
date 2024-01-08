import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  Future<http.Response> buttonPressed() async{
    http.Response returnedResult = await http.get(
      Uri.parse('http://localhost:8000/app/test'),
      headers: <String, String>{
        'Content-Type':'application/json; charset-UFT-8'
      });
      print(returnedResult.body);
      return returnedResult;
  }
  
@override
Widget build(BuildContext context){
  return MaterialApp(
    title: 'Test',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true, title: const Text('Test')),
      body: Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: const Text('test')),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: ElevatedButton(
            onPressed: buttonPressed, child: Text('beeeep'))
            )
        ],
        ))));
  }
}