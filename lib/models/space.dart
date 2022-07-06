class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String province;
  int rating;

  Space({
    required this.city,
    required this.province,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.rating,
  });
}
