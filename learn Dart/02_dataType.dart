void main() {
  // 对于字符串而言，单引号与双引号没啥区别
  String s1 = 'str1';
  String s2 = "str2";
  print(s1);
  print(s2);
  // 利用三个单引号或者双引号来进行换行赋值
  String s3 = '''
  this is s3
  ssssss
  ''';
  print(s3);
  // 拼接字符串
  print('$s1 $s2');
  print(s1 + '__' + s2);

  // 数值类型
  int a = 1200; // 必须整形
  double b = 1.1245;
  print(a);
  print(b);
  b = 1000; // 可以将整形赋值到浮点型
  print(b);
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  // bool 布尔类型，只能 true 或者 false
  bool flag = true;
  print(flag);
  print(!flag);
  if (flag) {
    print('真');
  }

  // List 数组集合类型
  var l1 = ['aa', 'bb', 'cc'];
  print(l1);
  print(l1.length);
  print(l1[0]);

  var l2 = new List();
  l2.add('xxx');
  l2.add('yyy');
  l2.add('zzz');
  print(l2);

  var l3 = new List<String>();
  l3.add('abcdefg');
  print(l3);

  // Maps 类型
  // 第一种
  var person = {
    'name': 'lz',
    'age': '21',
    'work': ['shop', 'sell', 'buy']
  };
  print(person);
  print(person['name']);
  print(person['age']);
  print(person['work']);
  // 第二种
  var p = new Map();
  p['name'] = 'zz';
  p['age'] = 45;
  p['work'] = ['a', 'b', 'c'];
  print(p);

  // 通过 is 关键词判断数据类型
  if (person is Map) {
    print('find Map data type.');
  }
}
