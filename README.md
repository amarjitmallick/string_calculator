# String Calculator Kata (Dart)

This project is an implementation of the classic **String Calculator Kata** in Dart, using **Test Driven Development (TDD)**.

---

## Features

- Empty string returns `0`
  - `""` → `0`
- Single number returns that number
  - `"1"` → `1`
- Two numbers (comma-separated) return their sum
  - `"1,5"` → `6`
- Any amount of numbers is supported
  - `"1,2,3,4"` → `10`
- New lines (`\n`) can be used as delimiters
  - `"1\n2,3"` → `6`
- Custom delimiters are supported
  - `"//;\n1;2"` → `3`
- Negative numbers throw an exception
  - `"1,-2,3,-4"` → `Exception: negative numbers not allowed -2,-4`

---

## Project Structure

```
string_calculator/
├── bin/
│   └── string_calculator.dart (main function)
├── lib/
│   └── string_calculator.dart
├── test/
│   └── string_calculator_test.dart
├── pubspec.yaml
└── README.md
```

---

## Usage

```dart
import 'lib/string_calculator.dart';

void main() {
  final calc = StringCalculator();

  print(calc.add(""));        // 0
  print(calc.add("1"));       // 1
  print(calc.add("1,5"));     // 6
  print(calc.add("1\n2,3")); // 6
  print(calc.add("//;\n1;2"));// 3

  try {
    print(calc.add("1,-2,3,-4"));
  } catch (e) {
    print(e); // Exception: negative numbers not allowed -2,-4
  }
}
```

---

## Run Tests

```bash
dart pub get
dart test
```

---
