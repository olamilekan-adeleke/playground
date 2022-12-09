void main(List<String> arguments) {
  Solution().productExceptSelf([1, 2, 3, 4]);
}

class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> result = List<int>.generate(nums.length, (_) => 1);

    print(result);

    int prefixInt = 1;
    for (var i = 0; i < nums.length; i++) {
      result[i] *= prefixInt;
      prefixInt = prefixInt * nums[i];
    }

    int postInt = 1;
    for (var i = (nums.length - 1); i >= 0; i--) {
      result[i] *= postInt;
      postInt *= nums[i];
    }

    // for (var i = 0; i < nums.length; i++) {
    //   bool leftOufOfBound = false;
    //   bool rightOufOfBound = false;

    //   if (i - 1 < 0) leftOufOfBound = true;
    //   if (i + 1 > (nums.length - 1)) rightOufOfBound = true;

    //   int prefixValue = leftOufOfBound ? 1 : prefix[i - 1];
    //   int postfixValue = rightOufOfBound ? 1 : postfix[i + 1];

    //   result.add(postfixValue * prefixValue);
    // }

    print(result);

    return result;
  }
}
