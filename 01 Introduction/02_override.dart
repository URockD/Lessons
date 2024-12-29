void main() {
 final wolverine = Hero(name:'Logan', power:'Regeneration');
  print(wolverine.toString());
}

class Hero{
  String name;
  String power;
  
  /*Hero(String name, String power)
    : this.name = name,
      this.power = power;*/
  Hero({required this.name, this.power = 'No power'});
  
  @override
  String toString(){
    return 'Name: $name, Power: $power';
  }
}