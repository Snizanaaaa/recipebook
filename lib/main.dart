import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'componets/horizontral_listview.dart';
import 'componets/products.dart';
import 'pronas.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imagesList = [
    "assets/images/logo2.jpg",
    "assets/images/desert.jpg",
    "assets/images/garnir.jpg",
    "assets/images/ice.jpg",
    "assets/images/photo5.jpg",
    "assets/images/salat.jpg",
    "assets/images/sup.jpg",
    "assets/images/copybook.jpg",
    "assets/images/sup.jpg",
  ];

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        aspectRatio: 16 / 10,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        pauseAutoPlayOnTouch: true,
        viewportFraction: 0.8,
      ),
      items: imagesList.map((image) {
        return Image.asset(image);
      }).toList(),
      carouselController: _carouselController,
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: const Text(
          'Recipe Book',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Snizhana Tyman'),
              accountEmail: Text('mamchaksnizana@gmail.com'),
              currentAccountPicture: GestureDetector(

                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Категорії'),
                leading: Icon(Icons.menu_book, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {
                launchUrl(Uri.parse('https://t.me/top_cook_book_bot'));
              },
              child: const ListTile(
                title: Text('Телеграм'),
                leading: Icon(Icons.telegram, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Вподобане'),
                leading: Icon(Icons.favorite, color: Colors.redAccent),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: const ListTile(
                title: Text('Про нас'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Ua (Україна)'),
                leading: Icon(Icons.language_outlined, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          imageCarousel,
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Категорії'),
          ),
          HorizontalList(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Рекомендації'),
          ),
          Container(
            height: 320.0,
            child: Product(),
          )
        ],
      ),
    );
  }
}
