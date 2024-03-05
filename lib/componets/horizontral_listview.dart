import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/pomedor/suppomedor.jpg',
            image_caption: 'Перша страва',
          ),
          Category(
            image_location: 'assets/images/pomedor/maincourse.jpg',
            image_caption: 'Друга страва ',
          ),
          Category(
            image_location: 'assets/images/pomedor/salatpomedor.jpg',
            image_caption: 'Салати',
          ),
          Category(
            image_location: 'assets/images/pomedor/veganpomedor.jpg',
            image_caption: 'Veg',
          ),
          Category(
            image_location: 'assets/images/pomedor/drinkpomedor6.jpg',
            image_caption: 'Напої',
          ),
          Category(
            image_location: 'assets/images/pomedor/desertpomedor.jpg',
            image_caption: 'Десерти',
          ),
          Category(
            image_location: 'assets/images/pomedor/icepomedor.jpg',
            image_caption: 'Морозиво',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({
    super.key,
    required this.image_location,
    required this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
