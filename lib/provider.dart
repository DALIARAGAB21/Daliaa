import 'package:flutter/cupertino.dart';

class BmiProvider with ChangeNotifier {
  double slide = 100;
  int count_weight = 50;
  int count_age = 19;
  String Text = "";

  void set(double v) {
    slide = v;
    notifyListeners();
  }

  void weight() {
    count_weight++;
    notifyListeners();
  }

  void weight2() {
    count_weight--;
    notifyListeners();
  }

  void age() {
    count_age++;
    notifyListeners();
  }

  void age2() {
    count_age--;
    notifyListeners();
  }

  void reset() {
    slide = 100;
    count_weight = 50;
    count_age = 19;
    Text = "";
    notifyListeners();
  }

  void check(double h, int w) {
    var r = w / (h / 100) * (h / 100);

    if (r >= 18 && r < 25) {
      Text = "Normal\n${r}";
    } else if (r <= 16) {
      Text = 'Bad!\n${r}';
    } else {
      Text = 'Good\n${r}';
    }
  }
}
