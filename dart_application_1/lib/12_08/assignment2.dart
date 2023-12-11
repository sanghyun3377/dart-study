// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word {
  String word = 'eafftest';

  //실습 1번
  bool isVowel(int i) {
    String vowel = word.substring(i, i + 1).toLowerCase();
    return ('aeiou').contains(vowel);
  }

  // bool isVowel(int i) {
  //   String data = word.substring(i, i + 1).toLowerCase();
  //   return data == 'a' ||
  //       data == 'e' ||
  //       data == 'i' ||
  //       data == 'o' ||
  //       data == 'u';
  // }

//실습 2번
  bool isConsonant(int i) {
    var consonant = word.substring(i, i + 1).toLowerCase();
    return ('bcdfghjklmnpqrstvwxyz').contains(consonant);
  }
}

void main() {
  var res = Word().isVowel(0);
  print(res);

  var res2 = Word().isConsonant(5);
  print(res2);

  final s1 = ' Dart and Flutter';
  print(s1.contains('Flutter')); // true (포함관계)
  print(s1.endsWith('Flutter')); //true (끝나는 단어가 맞는지)
  print(s1.indexOf('t')); // 13 (뒤에서 몇번째에 단어가 있는지
  print(s1.trim()); // 좌우 공백 제거

  String text1 = 'apple';
  String text2 = 'banana';
  int result = text2.compareTo(text1);
  print(result);
}
