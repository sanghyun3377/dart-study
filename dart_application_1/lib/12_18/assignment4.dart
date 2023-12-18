reverseString(String s) {
  String result = '';
  for (var i = s.length - 1; 0 <= i; i--) {
    result += s[i];
  }
  return result;
}
