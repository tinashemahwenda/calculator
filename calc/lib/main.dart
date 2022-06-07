import 'package:calc/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return MyButton(
                              Colors.green, buttons[index], Colors.white);
                        } else if (index == 1) {
                          return MyButton(
                              Colors.green, buttons[index], Colors.white);
                        } else {
                          return MyButton(
                              isOperator(buttons[index])
                                  ? Colors.deepPurple
                                  : Colors.deepPurple[50],
                              buttons[index],
                              isOperator(buttons[index])
                                  ? Colors.white
                                  : Colors.grey);
                        }
                      })))
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == 'x' || x == '/' || x == '+' || x == '-' || x == '=') {
      return true;
    }
    return false;
  }
}
