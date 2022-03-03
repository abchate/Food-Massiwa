

class Resto{

  String? idResto;
  String? nameResto;
  String? imageResto;
  String? descriptionResto;
  String? AdresseResto;
  double? ratingsResto;

  Resto({
    this.idResto,
    this.nameResto,
    this.imageResto,
    this.descriptionResto,
    this.AdresseResto,
    this.ratingsResto
  });

}

final resto = [
  Resto(
    idResto: "1",
    nameResto: "WASTA",
    imageResto: "assets/wasta.jpg",
    AdresseResto: 'Sigaraly',
    ratingsResto: 40,
  ),
   Resto(
    idResto: "2",
    nameResto: "Le Comoco",
    imageResto: "assets/comoco.jpg",
    AdresseResto: 'Bonzami',
    ratingsResto: 35,
  ),
];