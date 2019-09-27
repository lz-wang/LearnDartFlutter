void main() {
  // ++ -- 运算符
  var a = 10;
  var b = a++; //先赋值，再运算
  print('$a   $b');
  b = ++a; //先运算，再赋值
  print('$a   $b');

  // for 循环
  for (int i = 1; i < 10; ++i) {
    print(i);
  }

  List l1 = [
    {'name': 'a'},
    {'name': 'b'},
    {'name': 'c'}
  ];
  for (int i = 0; i < l1.length; ++i) {
    print(l1[i]['name']);
  }
  // while 循环
  int i = 0;
  while (i < 5) {
    print(i);
    ++i;
  }
  // continue 和 break 用法与 C++ 一致
}
