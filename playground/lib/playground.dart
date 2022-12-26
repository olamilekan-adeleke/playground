void main(List<String> args) {
  print(Solution().groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
}

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> hashMap = {};

    for (var val in strs) {
      List key = List<int>.generate(26, (_) => 0);

      for (var i = 0; i < val.length; i++) {
        int letterAsUniCode = val.codeUnitAt(i) - "a".codeUnitAt(0);

        key[letterAsUniCode] += 1;
      }

      // print(key);
      if (hashMap[key.toString()] == null) {
        hashMap[key.toString()] = [val];
      } else {
        hashMap[key.toString()] = [val, ...hashMap[key.toString()]!];
      }

      // hashMap[key] = [val, ...(hashMap[key] ?? [])];
    }

    // print(hashMap);

    return hashMap.values.toList();
  }
}
