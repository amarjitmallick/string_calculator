import 'package:string_calculator/string_calculator.dart';

void main(List<String> arguments) {
  final calc = StringCalculator();

  print(calc.add(""));
  print(calc.add("1"));
  print(calc.add("1,5"));
  print(calc.add("1\n2,3"));
  print(calc.add("//;\n1;2"));

  try {
    print(calc.add("1,-2,3,-4"));
  } catch (e) {
    print(e);
  }
}
