// void main(List<String> arguments) {
//   Solution().isValidSudoku(
//     [
//       ["8", "3", ".", ".", "7", ".", ".", ".", "."],
//       ["6", ".", ".", "1", "9", "5", ".", ".", "."],
//       [".", "9", "8", ".", ".", ".", ".", "6", "."],
//       ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
//       ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
//       ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
//       [".", "6", ".", ".", ".", ".", "2", "8", "."],
//       [".", ".", ".", "4", "1", "9", ".", ".", "5"],
//       [".", ".", ".", ".", "8", ".", ".", "7", "9"]
//     ],
//   );
// }

// class Solution {
//   bool isValidSudoku(List<List<String>> board) {
//     return false;
//   }
// }

void main(List<String> arguments) {
  Solution().productExceptSelf([1, 2, 3, 4]);
}

class Solution {
  List<int> _result = [];

  List<int> productExceptSelf(List<int> nums) {
    _result = List<int>.generate(nums.length, (_) => 1);

    print(_result);

    int prefixInt = 1;
    for (var i = 0; i < nums.length; i++) {
      _result[i] *= prefixInt;
      prefixInt = prefixInt * nums[i];
    }

    int postInt = 1;
    for (var i = (nums.length - 1); i >= 0; i--) {
      _result[i] *= postInt;
      postInt *= nums[i];
    }

    return _result;
  }
}
