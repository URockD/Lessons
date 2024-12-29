void main() {
  final wolverine = Hero(name:'Logan', power:'Regeneration');
  print(wolverine.toString());
  final fields = {
    'name':'Tony Stark',
    'power':'Armor'
  };
  final ironman = Hero.fromMap(fields);
  print(ironman.toString());
}

class Hero{
  String name;
  String power;
  
  /*Hero(String name, String power)
    : this.name = name,
      this.power = power;*/
  Hero({required this.name, this.power = 'No power'});
  
  Hero.fromMap(Map<String, dynamic> fields)
    : name = fields['name'] ?? '', 
      power = fields['power']?? '';
  
  @override
  String toString(){
    return 'Name: $name, Power: $power';
  }
}