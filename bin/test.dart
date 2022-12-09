void main(List<String> args) {
  const String word = "Let's take The LeetCode contest";
  // const String word2 = "Contest";

  print(Solution().reverseWords(word));
  // print(Words().reverseWords(word2));

  // print(Words().reverseWords(word2));

  // print(word2[1]);
}

class Solution {
  void reverse(List<String> stringArray, int i, int j) {
    for (; i < j; i++, j--) {
      String temp = stringArray[i];
      stringArray[i] = stringArray[j];
      stringArray[j] = temp;
    }
  }

  String reverseWords(String s) {
    List<String> stringArray = s.split('');

    int i = 0;
    int j = 0;

    while (j < stringArray.length) {
      if (j == stringArray.length || stringArray[j] == ' ') {
        reverse(stringArray, i, j - 1);
        i = j + 1;
      }

      j++;
    }

    return stringArray.join('');
  }
}
