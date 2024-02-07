import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



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
    "assets/images/logo.jpg",
    "assets/images/photo2.jpg",
    "assets/images/photo3.jpeg",
    "assets/images/photo4.jpeg",
    "assets/images/photo5.jpg",
    "assets/images/photo6.jpeg",
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
        title: const Text('Top_Cook_Book'),
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
              accountName: const Text('Snizhana Tyman'),
              accountEmail: const Text('mamchaksnizana@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Мій акаунт'),
                leading: Icon(Icons.person, color: Colors.black),
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
              onTap: () {},
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
              onTap: () {},
              child: const ListTile(
                title: Text('Настройки'),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),
            InkWell(
              onTap: () {},
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

          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Категорії'),),


        ],
      ),
    );
  }
}
