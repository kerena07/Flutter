
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ArithmeticOperationsScreen(),
  ));
}

class ArithmeticOperationsScreen extends StatefulWidget {
  @override
  _ArithmeticOperationsScreenState createState() => _ArithmeticOperationsScreenState();
}

class _ArithmeticOperationsScreenState extends State<ArithmeticOperationsScreen> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Operations'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: number1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter Number 1'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: number2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter Number 2'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      performOperation('+');
                    },
                    icon: Icon(Icons.add),
                    label: Text('Add'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      performOperation('-');
                    },
                    icon: Icon(Icons.remove),
                    label: Text('Subtract'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      performOperation('*');
                    },
                    icon: Icon(Icons.clear),
                    label: Text('Multiply'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Result: ', style: TextStyle(fontSize: 18)),
                  Text('$result', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void performOperation(String operator) {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;

    setState(() {
      switch (operator) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        default:
          result = 0;
      }
    });
  }
}
