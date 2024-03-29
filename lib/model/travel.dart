class Travel {
  //model variables
  final String name;
  final String description;
  final int duration;
  final String location;
  final double rating;
  final int distance;
  final double cost;
  final List<String> imageUrl;

  //model constuctor
  Travel(this.name, this.duration, this.description, this.location, this.rating,
      this.distance, this.imageUrl, this.cost);

  //List of travel items
  static List<Travel> getTravelItems() {
    final List<Travel> travelList = [
      Travel(
          'Magic Tower',
          4,
          'The building where the heights meets the golden touches',
          'Cairo, Egypt',
          4.6,
          3,
          ['assets/images/img1.jpg', 'assets/images/thumbnail1.png'],
          230),
      Travel(
          'Dubai Burg',
          5,
          'Built on top of a man-made island, this building is a masterpiece',
          'Dubai, UAE',
          4.3,
          6,
          ['assets/images/img2.jpg', 'assets/images/thumbnail2.png'],
          432),
      Travel(
          'Arc Bridge',
          3,
          'Visit and experience the magic of the oldest arc bridge in the world',
          'Rhodes, Greece',
          4.5,
          8,
          ['assets/images/img3.jpg', 'assets/images/thumbnail3.png'],
          283),
      Travel(
          'Magic Beaches',
          3,
          'Do you have a taste for beaches, and camels. Magic Sandy Beaches is for you',
          'Santo, Vanuatu',
          4.2,
          16,
          ['assets/images/img4.jpg', 'assets/images/thumbnail4.png'],
          389),
      Travel(
          'Blue Nature',
          2,
          'The beach offers senernity and deep connection to the mother nature',
          'Ayia, Cyprus',
          4.8,
          21,
          ['assets/images/img5.jpg', 'assets/images/thumbnail5.png'],
          534),
    ];
    return travelList;
  }

//Get the nearest list items (Those whose distance is less than 10kms
  static List<Travel> getNearestItems() {
    List<Travel> travelList = Travel.getTravelItems();
    return travelList.where((element) => element.distance < 10).toList();
  }
}
