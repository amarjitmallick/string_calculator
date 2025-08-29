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
    final parts = numbers.split(delimiter).map(int.parse).toList();

    final negatives = parts.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("negative numbers not allowed ${negatives.join(',')}");
    }

    return parts.reduce((a, b) => a + b);
  }
}
