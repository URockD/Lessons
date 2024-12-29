void main() {
  final mySquare = Square(side:-10);
  mySquare.side = 20;
  print('area: ${mySquare.area}');

}

class Square{
  double _side;
  
  Square({required double side})
    : assert(side >= 0,'side mut be greater than zero'),
      _side = side;
  
  double get area => _side * _side;
  
  set side(double value){
    if(value < 0){
      throw 'the value must be greater than zero';
    }
    _side = value;
  }
}