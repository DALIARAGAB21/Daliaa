import 'package:bmi/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculate extends StatelessWidget {
  Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    var object = Provider.of<BmiProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // إضافة مسافة في الأعلى
          Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 20), // إضافة مسافة بين العنوان والصندوق
          Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 300, // تقليل الارتفاع إلى 300 لتناسق أفضل
            width: 350, // تقليل العرض إلى 350
            alignment: Alignment.center, // جعل النص في المنتصف
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${object.Text}',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // إضافة مسافة بين الصندوق وزر إعادة التعين
          ElevatedButton(
            onPressed: () {
              object.reset(); // استدعاء دالة إعادة التعين
            },
            child: Text('Reset', style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120), // زيادة حجم الزر
              backgroundColor: Colors.pink,
              // لون خلفية الزر
            ),
          ),
        ],
      ),
    );
  }
}
