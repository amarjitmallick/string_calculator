import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(""), equals(0));
  });

  test('Single number returns that number', () {
    final calculator = StringCalculator();
    expect(calculator.add("1"), equals(1));
  });

  test('Two numbers returns their sum', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,5"), equals(6));
  });

  test('Any amount of numbers returns their sum', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,2,3,4"), equals(10));
  });

  test('New lines ("\\n") are allowed as delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add("1\n2,3"), equals(6));
  });
}
