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
}
