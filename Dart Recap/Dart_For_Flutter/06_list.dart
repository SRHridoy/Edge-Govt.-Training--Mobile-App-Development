void main() {
  var listNames = [10, 20, 30, 40];
  listNames.add(50);
  print(listNames);

  var nums = [];
  nums.add('Hridoy');
  nums.add('Nafiza');
  nums.addAll(listNames);
  print(nums);

  nums.insert(2, 'Rupa');
  print(nums);

  nums.insertAll(4, listNames);
  print(nums);

  nums[6] = 'Tanha';
  print(nums);

  listNames.replaceRange(0, 3, [20, 44, 55, 22]);
  print(listNames);

  nums.removeLast();
  print(nums);

  nums.remove(10);
  print(nums);

  nums.removeAt(3);
  print(nums);

  print('Length : ${listNames.length}');
  print('Length: ${nums.length}');
  print('Is empty : ${nums.isEmpty}');
  print('Reversed : ${nums.reversed}');
  print(nums);
}
