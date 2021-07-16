class BirdModel {
  final String name;
  final String shortDetail;
  final String image;

  BirdModel(
      {required this.name, required this.image, required this.shortDetail});

  factory BirdModel.fromJson(Map<String, dynamic> json) => BirdModel(
      name: json['name'],
      image: json['image'],
      shortDetail: json['shortDetail']);
}

List<BirdModel> listOfBirds = [
  BirdModel(
      name: "Indian peafowl",
      shortDetail:
          "The Indian peafowl, also known as the common peafowl, and blue peafowl, is a peafowl species native to the Indian subcontinent.",
      image:
          "http://eyesofwild.com/wp-content/uploads/photo-gallery/imported_from_media_libray/yja18-7.jpg"),
  BirdModel(
      name: "Blue-tailed bee-eater",
      shortDetail:
          "The blue-tailed bee-eater is a near passerine bird in the bee-eater family Meropidae.",
      image:
          "http://eyesofwild.com/wp-content/uploads/photo-gallery/imported_from_media_libray/27.jpg"),
  BirdModel(
      name: "Changeable hawk eagle",
      shortDetail:
          "The changeable hawk-eagle or crested hawk-eagle is a large bird of prey species of the family Accipitridae.",
      image: "http://eyesofwild.com/wp-content/uploads/2019/04/wil18-11.jpg"),
];
