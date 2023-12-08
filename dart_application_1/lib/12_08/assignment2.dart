// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word {
  String word = 'eaff';

  bool isVowel(int i) {
    String data = word.substring(i, i + 1).toLowerCase();
    return ('aeiou').contains(data);
  }

  // bool isVowel(int i) {
  //   String data = word.substring(i, i + 1).toLowerCase();
  //   return data == 'a' ||
  //       data == 'e' ||
  //       data == 'i' ||
  //       data == 'o' ||
  //       data == 'u';
  // }
}

void main() {
  var res = Word().isVowel(0);
  print(res);
}
