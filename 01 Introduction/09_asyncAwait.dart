Future<String> fetchUserOrder(bool isError) async {
  if (isError) {
    return await Future.error('Not available');
  }
  return await Future.delayed(Duration(seconds: 2), () => 'Large Latte');
}
void main() async {
  print('Fetching user orders...');
  await fetchOrders();
  print('Ending user orders...');
}

Future<void> fetchOrders() async {
  try {
    print(await fetchUserOrder(true));
  } catch (e) {
    print('Caught error: $e');
  }
  try {
    print(await fetchUserOrder(false));
  } catch (e) {
    print('Caught error: $e');
  }
}