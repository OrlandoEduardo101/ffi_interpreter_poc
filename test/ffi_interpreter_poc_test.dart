import 'package:ffi_interpreter_poc/ffi_interpreter_poc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
