void main() {

}

enum PlantType {nuclear, wind, water}
abstract class EnergyPlant{
  double energyLeft;
  PlantType type;
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant{
  WindPlant({required double initialEnergy})
    : super(energyLeft:initialEnergy, type: PlantType.wind);
  @override
  void consumeEnergy(double amount) => energyLeft-= amount;
}

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  PlantType type;
  NuclearPlant({required this.energyLeft})
    : type = PlantType.nuclear;
  
  @override
  void consumeEnergy(double amount) => energyLeft-= amount*0.5;
}