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

    return result;
  }
}
