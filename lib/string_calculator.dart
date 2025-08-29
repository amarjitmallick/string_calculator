class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      numbers = parts[1];
    }

    numbers = numbers.replaceAll('\n', delimiter);
    final parts = numbers.split(delimiter);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
