Future<String> fetchUserOrder(bool isError) {
  if (isError) {
    return Future.error('Not available');
  }
  return Future.delayed(Duration(seconds: 2), () => 'Large Latte');
}

void main() {
  fetchUserOrder(false).then((value) {
    print('Awaiting user order...');
    print('Your order is: $value');
  }).catchError((onError){
    print('Sorry, we are out of $onError');
  });
  print('Fetching user order...');

  fetchUserOrder(true).then((value) {
    print('Awaiting user order...');
    print('Your order is: $value');
  }).catchError((onError){
    print('Sorry, we are out of $onError');
  });
  print('Fetching user order...');
}
