class Shoe {
  String name;
  double price;
  String imagePath;
  String description;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  // Create a Shoe instance from a JSON map
  // factory Shoe.fromJson(Map<String, dynamic> json) {
  //   return Shoe(
  //     name: json['name'],
  //     price: json['price'].toDouble(),
  //     imagePath: json['imagePath'],
  //     description: json['description'],
  //   );
  // }

  // // Convert the Shoe instance to a JSON map
  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     'price': price,
  //     'imagePath': imagePath,
  //     'description': description,
  //   };
  // }
}
