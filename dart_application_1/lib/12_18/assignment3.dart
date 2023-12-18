int findMax(List<int> a) {
  int result = 0;
  for (var i in a) {
    if (result < i) {
      result = i;
    }
  }
  return result;
}
