class PetModel {
  final int id;
  final String imageUrl;
  final String name;
  final String description;
  final int age;
  final String sex;
  final String color;

  PetModel(
      {this.id,
      this.imageUrl,
      this.name,
      this.description,
      this.age,
      this.sex,
      this.color});

  factory PetModel.fromJson(Map<String, dynamic> json) {
    return PetModel(
        id: json['id'],
        imageUrl: json['imageUrl'],
        name: json['name'],
        description: json['description'],
        age: json['age'],
        sex: json['sex'],
        color: json['color']);
  }
}
