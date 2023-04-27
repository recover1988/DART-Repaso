void main(List<String> args) {
  // final windPlant = EnergyPlant();
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enoguh energy');
  }
  return plant.energyLeft - 10;
}

// * enum para indicar elementos que no van a cambiar mucho
enum PlanType { nuclear, wind, water }

// * En las clases abastractas se nombran los metodos pero no se implementan
abstract class EnergyPlant {
  double energyLeft;
  final PlanType type; // nuclear, wind, water
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// ! extends o implements
// * extends es agregar o implementar de otra clase, estamos haciendo uso de la herencia, heredo toda la clase padre
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// * Implements, nos ayuda a implementar de manera explicita los overrides

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
