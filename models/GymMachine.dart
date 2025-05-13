enum State { avilable, out_of_service, under_maintence, in_storge }

class Gymmachine {
  int id;
  int primeId;
  String name;
  double price;
  DateTime dateAdded;
  int quantity;
  State state;

  Gymmachine({
    required this.id,
    required this.primeId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.dateAdded,
    required this.state,
  });

  void displayInfo() {
    print("---------display one machine info-----------");
    print("id: ${id}");
    print("primeId: ${primeId}");
    print("name: ${name}");
    print("quantity: ${quantity}");
    print("price: ${price}");
    print("dateAdded: ${dateAdded}");
    print("state: ${state.name}");
    print("--------------------");
  }
}
