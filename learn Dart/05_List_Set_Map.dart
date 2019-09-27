void main() {
  // 1. List的基本操作
  List l1 = ['a', 'b', 'c'];
  print(l1);
  print(l1.length); // 求列表长度
  print(l1.isEmpty); // 判断是否为空
  print(l1.isNotEmpty); // 判断是否不为空
  print(l1.reversed); // 反转列表，圆括号

  // 列表反转
  var l2 = l1.reversed.toList(); // 倒序列表
  print(l2);

  // 添加、查找、删除、修改、插入
  // 添加元素
  l1.add('d'); // 添加单个元素
  print(l1);
  l1.addAll(['e', 'f']); // 添加多个元素，拼接数组
  print(l1);
  // 查找元素
  print(l1.indexOf('a')); // 查找对应元素的索引
  print(l1.indexOf('z')); // 找不到就返回-1
  //删除元素
  l1.remove('a'); // 删除指定元素
  print(l1);
  l1.removeAt(0); //删除指定索引值
  print(l1);
  // 修改指定区间元素
  l1.fillRange(1, 2, 'bbbbbb');
  print(l1);
  l1.fillRange(0, 1, 'aaaaaa');
  print(l1);
  // 指定位置插入数据
  l1.insert(0, '00');
  print(l1);
  // 插入列表
  l1.insertAll(1, ['11', '22', '33']);
  print(l1);

  // 列表和字符串相互转换
  var s1 = l1.join('--');
  print(s1);
  var l3 = s1.split('--');
  print(l3);

  // 2. Set的基本操作
  var s = new Set();
  s.add('apple');
  s.add('google');
  s.add('google'); // 此元素不会被重复添加
  s.add('microsoft');
  print(s);
  print(s.toList());

  // 利用集合进行去重
  var l4 = ['1', '1', '2', '2', '3', '3'];
  var s2 = new Set();
  s2.addAll(l4);
  print(s2);
  print(s2.toList());

  // 3. Maps的基本操作
  Map person = {"name": "lz", "age": 20};
  print(person);
  print(person.keys.toList());
  print(person.values.toList());
  print(person.isEmpty);
  print(person.isNotEmpty);
  person.addAll({"sex": "male"}); // 添加元素
  print(person);
  person.remove("sex"); // 根据键移除元素
  print(person);
  print(person.containsKey("name")); // 检查是否包含某个键
  print(person.containsValue("lz")); // 检查是否包含某个元素

  // 使用 forEach 遍历以上数据类型
  List l5 = ['a', 'b', 'c'];
  l5.forEach((value) {
    print('$value');
  });
  l5.forEach((value) => print(value)); // 上面代码的简写形式
  person.forEach((key, value) {
    print("$key --- $value");
  });
  // 使用 map 批量修改列表的值
  var l6 = l5.map((value) {
    return value * 2;
  });
  print(l6);
  // 使用 where, any, every 查找满足条件的值（ Set 和 Map 也可以用）
  List l7 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var newL7 = l7.where((value) {
    return value > 5; // 返回一个新的数组
  });
  print(newL7.toList());
  var f = l7.any((value) {
    return value > 5; // 判断原数组中是否存在满足要求的元素
  });
  print(f);
  var f2 = l7.every((value) {
    return value > 5; // 判断原数组中是否每个元素都满足此要求
  });
  print(f2);
}
