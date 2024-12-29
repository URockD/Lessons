void main() {
 final wolverine = Hero("Logan","Regeneration");
  print(wolverine);
}

class Hero{
  String name;
  String power;
  /*Hero(String name, String power)
    : this.name = name,
      this.power = power;*/
  Hero(this.name,this.power);
}