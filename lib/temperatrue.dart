import 'dart:math';

enum Result {
  ans;
}
class Tem1 {
  double? answer ;
  Tem1() {
    var r = Random();
    answer = r.nextDouble();
  }
  double?  anwer(){
    return answer;
  }
  Result doTem(double T) {
    if (T >= answer!) {
      return Result.ans;
    }
    else {
      return Result.ans;
    }
  }
}