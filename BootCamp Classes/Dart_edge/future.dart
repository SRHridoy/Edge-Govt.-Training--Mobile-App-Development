Future<void> fetchingData() async {
  await Future.delayed(Duration(seconds: 5));
  print('Data Fetched after 5 second');
}

void main() {
  fetchingData();

  print('This is under featching but executed earlier');
}
