import 'package:bmi/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';

void main()
{
  runApp(ChangeNotifierProvider<BmiProvider>(create: (context) => BmiProvider(),child: Myapp(),));
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login()
    );
  }
}
