void main(List<String> args) {
  // final windPlant = EnergyPlant();
}

// * enum para indicar elementos que no van a cambiar mucho
enum PlanType { nuclear, wind, water }

// * En las clases abastractas se nombran los metodos pero no se implementan
abstract class EnergyPlant {
  double energyLeft;
  PlanType type; // nuclear, wind, water
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}
