main() {
  // 自动类型推断
  var s = '你好, DART!';
  print(s);

  var num = 12.3;
  print(num);


  // 手动赋值类型，注意类型必须一致，区分大小写
  String s1 = 'world';
  print(s1);

  int x = 12;
  int X = 100;
  print(x);
  print(X);
  x = 1569;
  print(x);

  // 常量使用 final 或者 const 修饰，不可修改
  final name = 'lzwang';
  print(name);
  const PI = 3.14159;
  print(PI);

  // final 不仅有 const 编译时常量的特性，更重要的在于它是运行时常量
  // 且 final 时惰性初始化，即在运行时第一次使用前才初始化
  final a = new DateTime.now(); // 不能使用 const
  print(a);
}
