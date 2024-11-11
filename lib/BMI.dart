import 'package:bmi/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Calc.dart';

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    var object = Provider.of<BmiProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'BMI',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.male, size: 80, color: Colors.blue),
                      SizedBox(height: 10),
                      Text(
                        'Male',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female, size: 80, color: Colors.red),
                      SizedBox(height: 10),
                      Text(
                        'Female',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${object.slide.toStringAsFixed(1)} cm',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Slider(
                    value: object.slide,
                    min: 0,
                    max: 200,
                    onChanged: object.set,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${object.count_weight}',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: object.weight,
                            child: Icon(Icons.add),
                            mini: true,
                          ),
                          SizedBox(width: 10),
                          FloatingActionButton(
                            onPressed: object.weight2,
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${object.count_age}',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: object.age,
                            child: Icon(Icons.add),
                            mini: true,
                          ),
                          SizedBox(width: 10),
                          FloatingActionButton(
                            onPressed: object.age2,
                            child: Icon(Icons.remove),
                            mini: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                object.check(object.slide, object.count_weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculate()),
                );
              },
              child: Text(
                'Calculate',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
