import 'package:cook_book/pages/product_datails.dart';
import 'package:flutter/material.dart';
import '../pages/product_details.dart'; // Переконайтеся, що імпортуєте правильний файл з деталями продукту

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final List<Map<String, Object>> productList = [
    {
      "name": "А-ЛЯ ЦЕЗАР",
      "picture": "assets/images/products/SalatCezar.jpg",
      "cookingTime": 25,
    },
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "cookingTime": 40,
    },

    {
      "name": "Банановий коктель",
      "picture": "assets/images/products/banantop.jpg",
      "cookingTime": 40,
    },
    {
      "name": "Морозиво",
      "picture": "assets/images/products/moz.jpg",
      "cookingTime": 40,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarRecipes(
          prodName: productList[index]['name'] as String,
          prodPicture: productList[index]['picture'] as String,
          prodCookingTime: productList[index]['cookingTime'] as int,
        );
      },
    );
  }
}

class SimilarRecipes extends StatefulWidget {
  final String prodName;
  final String prodPicture;
  final int prodCookingTime;

  const SimilarRecipes({
    Key? key,
    required this.prodName,
    required this.prodPicture,
    required this.prodCookingTime,
  }) : super(key: key);

  @override
  _SimilarRecipesState createState() => _SimilarRecipesState();
}

class _SimilarRecipesState extends State<SimilarRecipes> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: widget.prodName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetails(
                productDetailsName: widget.prodName,
                productDetailsPicture: widget.prodPicture,
                productDetailsCookingTime: widget.prodCookingTime,
              ),
            )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.prodName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : null,
                    ),
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                      if (isLiked) {
                        // Додайте логіку для вподобання рецепту
                      } else {
                        // Додайте логіку для скасування вподобання рецепту
                      }
                    },
                  ),
                ),
              ),
              child: Image.asset(
                widget.prodPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
