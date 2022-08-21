import 'package:midterm_630710380/temperatrue.dart';
import 'package:flutter/material.dart';
class TemPage extends StatefulWidget {
  @override
  State<TemPage> createState() => _TemPageState();
}
class _TemPageState extends State<TemPage> {
  final controller1 = TextEditingController();
  final _tem = Tem1();
  var _feedbacktext = '';
  double Celsius = 0.0000;
  void handClick(){
    var guess1 = double.tryParse(controller1.text);

    if(guess1 == null){
      setState(() {
        _feedbacktext = 'Input Error!!!';
      });
    }
    else if(guess1 != null){
     // var result = _tem.doTem(guess1);
     // var r = _tem.answer;
      setState(() {
       _feedbacktext = '$guess1 Celsius = $Celsius Fahrenheit';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Midterm exam')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            const Text('Temperature Converter'),
      TextField(
              controller: controller1,
              decoration:  InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            //callback function
            ElevatedButton(
              onPressed: handClick,
              child: Text('Celsius to Fahrenheit'),
            ),

            ElevatedButton(
              onPressed: handClick,
              child: Text('Celsius to Kelvin'),
            ),
            ElevatedButton(
              onPressed: handClick,
              child: Text('Fahrenheit to Celsius'),
            ),
            ElevatedButton(
              onPressed: handClick,
              child: Text('Fahrenheit to Kelvin'),
            ),
            
            ElevatedButton(
              onPressed: handClick,
              child: Text('Kelvin to Celsius'),
            ),
            
            ElevatedButton(
              onPressed: handClick,
              child: Text('Kelvin to Fahrenheit'),
            ),
            Text(_feedbacktext)
          ],
        ),
      ),
    );
  }
}