import 'package:test/test.dart';

import '../bin/playground.dart';

void main() {
  test('Product of Array Except Self 1', () {
    expect(
      Solution().productExceptSelf([1, 2, 3, 4]),
      equals([24, 12, 8, 6]),
    );
  });

  test('Product of Array Except Self 2', () {
    expect(
      Solution().productExceptSelf([-1, 1, 0, -3, 3]),
      equals([0, 0, 9, 0, 0]),
    );
  });
}
