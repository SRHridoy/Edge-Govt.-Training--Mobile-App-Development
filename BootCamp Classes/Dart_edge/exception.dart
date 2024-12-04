void main() {
  try {
    double result = 23.0 / 0;
    print(result);
  } catch (e) {
    print('The error is : $e');
  } finally {
    print('Your code is executed!');
  }
}
