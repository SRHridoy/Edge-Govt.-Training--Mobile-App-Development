void main() {
  var map_name = {
    'Name': 'Hridoy',
    'YearOfExperience': 3,
    'Avg.Rating': 3.0,
    'CanLocateToOffice': true
  };

  map_name['Name'] = 'Riva';

  print(map_name);
  print(map_name['Name']);

  //Alternative:
  var mapName = Map();

  mapName['Name'] = 'Rana';
  mapName['Age'] = 23;
  mapName['Study'] = true;

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Riva'));
  print(mapName.containsValue('Name'));
  print(map_name.remove('Name'));
  print(mapName);
}
