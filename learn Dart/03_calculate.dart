void main() {
  // 算数运算符
  int a = 24;
  int b = 5;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b); // 直接除求得浮点数
  print(a ~/ b); // 整除
  print(a % b); // 求余数

  var c = a * b;
  print(c);

  // 关系运算符
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  // 逻辑运算符
  bool flag = true;
  print(flag);
  print(!flag);

  print(true && true);
  print(false || false);

  // 赋值运算符
  int x = 12;
  int y = 13;
  var z = x + y;
  print(z);

  int v; // ??= 表示，若 v 为空的话，将1234赋值给 v
  v ??= 1234;
  print(v);
  v ??= 4321;
  print(v);
  // 复合赋值运算符
  double aa = 2.4;
  print(aa);
  aa += 1;
  print(aa);
  aa -= 1;
  print(aa);
  aa *= 2;
  print(aa);
  aa /= 2;
  print(aa);

  // 条件表达式
  if (flag) {
    print('TRUE');
  } else {
    print('FALSE');
  }
  // switch... case...
  var sex = 'x';
  switch (sex) {
    case '男':
      print('MALE');
      break;
    case '女':
      print('FEMALE');
      break;
    default:
      print('ERROR');
      break;
  }
  // 三目运算符
  String d = flag ? 'TRUE' : 'FALSE';
  print(d);
  // ?? 运算符
  var e;
  var f = e ?? 10;
  print(f);

  // Dart类型转换
  // Number vs. String
  String s1 = '123';
  var n = int.parse(s1); //类型转换
  print(n is int); // 判断
  String s2 = '123.321';
  var m = double.parse(s2);
  print(m is double); //建议使用double

  var s3 = m.toString();
  print(s3 is String);

  // 异常捕获
  try {
    var k = int.parse(s2);
  } catch (err) {
    print(0);
  }

  try {
    var k = double.parse(s2);
    print(k);
  } catch (err) {
    print(0);
  }
  // 与 bool 类型转换
  var str = 'xxx';
  if (str.isEmpty) {
    print('str空');
  } else {
    print('str不为空');
  }

  var t;
  if (t == null) {
    print('t is NULL!');
  }

  var l = 0 / 0;
  if (l.isNaN) {
    print('l is NaN');
  } else {
    print(l);
  }
}
