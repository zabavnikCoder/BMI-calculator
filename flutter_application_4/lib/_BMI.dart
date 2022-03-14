import 'package:flutter/material.dart';

class BMI extends StatefulWidget{
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState()=>_BMIState();
}

class _BMIState extends State<BMI>{
  final TextEditingController _heightController=TextEditingController();
  final TextEditingController _weightController=TextEditingController();

  double? _result;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculating BMI'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children:<Widget>[
             TextField(
               controller: _heightController,
               keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'cm',
              icon: Icon(Icons.height),
            ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'kg',
                icon: Icon(Icons.monitor_weight),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              
              child: const Text(
                'calculate',
                style: TextStyle(color: Colors.white),
              ), 
              onPressed:calculateBMI,
            ),
            const SizedBox(height: 35),
            Text(
              _result == null ? "Result" : "${_result?.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Color.fromARGB(255, 128, 95, 165),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI(){
    double height=double.parse(_heightController.text)/100;
    double weight=double.parse(_weightController.text);

    double heightSquare=height*height;
    double result=weight/heightSquare;
    _result=result;

    setState(() {
      
    });
  }
}