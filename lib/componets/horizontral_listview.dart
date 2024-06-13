import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(
            imageLocation: 'assets/images/pomedor/suppomedor.jpg',
            imageCaption: 'Перша страва',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/maincourse.jpg',
            imageCaption: 'Друга страва',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/salatpomedor.jpg',
            imageCaption: 'Салати',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/veganpomedor.jpg',
            imageCaption: 'Veg',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/drinkpomedor6.jpg',
            imageCaption: 'Напої',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/desertpomedor.jpg',
            imageCaption: 'Десерти',
          ),
          Category(
            imageLocation: 'assets/images/pomedor/icepomedor.jpg',
            imageCaption: 'Морозиво',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category({
    Key? key,
    required this.imageLocation,
    required this.imageCaption,
  }) : super(key: key);

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
              imageLocation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: const TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
