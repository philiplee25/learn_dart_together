void main() {
  // // 여기에 발생시키면 아래 코드는 다 날아간다.
  // throw Exception('에러발생');

  final numString = '10.5';
  int num;

  try {
    num = int.parse(numString);
    print(num);
  } catch (e) {
    num = 0;
    print(num);
  }

  // // 이미 위에서 터져서 안뜸
  // throw Exception('에러발생');
}
