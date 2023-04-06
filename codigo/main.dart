import 'package:flutter/material.dart';
import 'package:reto_semana_dos/pages/homepage.dart';

void main() {
  runApp(const RetoDos());
}

class RetoDos extends StatelessWidget{
  const RetoDos({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CounterApp',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }


}

