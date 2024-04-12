import 'package:flutter/material.dart';
import 'package:cook_book/pages/product_datalis.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "А-ЛЯ ЦЕЗАР",
      "picture": "assets/images/products/SalatCezar.jpg",
      "Cooking_time": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "Cooking_time": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "Cooking_time": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "Cooking_time": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "Cooking_time": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "Cooking_time": 25,
    },

  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarRecipes(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_Cooking_time: product_list[index]['Cooking_time'],
        );
      },
    );
  }
}

class SimilarRecipes extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_Cooking_time;

  SimilarRecipes({this.prod_name,
    this.prod_picture,
    this.prod_Cooking_time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            //розміщення нової сторінки над головною нажимаючи на іконку
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetalis())),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
