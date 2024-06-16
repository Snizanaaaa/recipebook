import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal List Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal List Example'),
        ),
        body: FirstCourseScreen(),
      ),
    );
  }
}

class FirstCourseScreen extends StatelessWidget {
  final List<Map<String, dynamic>> dishes = [
    {
      "name": "БОРЩ З КАРАСІВ",
      "picture": "assets/images/products/supzkarasiv.jpg",
      "cookingTime": 40,
      "ingredients": [
        '• 2 л води (+150 мл для овочів)',
        '• 6 невеликих карасів',
        '• 1 великий буряк',
        '• 1 середня цибуля',
        '• 4 середні картоплі',
        '• 1 середня морква',
        '• 200 мл домашнього томатного соку',
        '• 200 г свіжої капусти',
        '• 1 ст. л. соняшникової олії',
        '• 2 лаврових листи',
        '• 3 горошини духмяного перцю',
        '• 1 ст. л. борошна',
        '• 3 ст. л. соняшникової олії',
        '• сіль та перець до смаку',
      ],
      "recipe": [
        '1. Почистьте від луски та нутрощів рибу. Помийте під проточною водою та обсушіть. Я використав 6 маленьких карасиків.',
        '2. Посоліть рибини з обох боків та запаніруйте в борошні, в мене пішла приблизно 1 ст. л. борошна.',
        '3. Розігрійте пательню з 2 ст. л. олії та добре обсмажте карасів з обох сторін до рум’яної скоринки. Перекладіть на паперові рушники, щоб всоталася зайва олія.',
        '4. Очистьте 1 великий буряк, 1 середню цибулину, 4 середні картоплини та 1 середню морквину. Цибулю поріжте кубиком, а моркву з буряком натріть на тертці.',
        '5. Цибулю обсмажте у глибокій пательні з 1 ст. л. олії до м’якості. Додайте моркву і буряк, влийте 200 мл домашнього томатного соку і тушкуйте все разом кілька хвилин. Потім додайте 150 мл води, доведіть до кипіння і тушкуйте на повільному вогні 10 хвилин.',
        '6. Тим часом очищену картоплю поріжте невеликими кубиками, викладіть у каструлю і залийте 2 л води. Варіть на середньому вогні з дрібкою солі 20 хвилин.',
        '7. Нашаткуйте 200 г свіжої капусти, додайте у каструлю та варіть ще протягом 10 хвилин.',
        '8. Після цього додайте в каструлю овочі з пательні, 2 лаврових листи, 3 горошини духмяного перцю, сіль та перець до смаку. Залиште на повільному вогні на 5 хвилин.',
        '9. Додайте до борщу смажених карасів та проваріть все разом протягом кількох хвилин. Подавайте борщ з карасиком у тарілці.',
      ],
    },
    {
      "name": "Розсольник 'Ленінградський'",

      "picture": "assets/images/van/ros.jpg",
      "cookingTime": 60,
      "ingredients": [
        "Яловичина на кістці - 200-250 г",


        "Картопля - 150-200 г",


        "Огірки солоні - 2 шт.",


        "Рис - 2 ст. ложки",


        "Морква - 80 г",


        "Цибуля ріпчаста - 70 г",


        "Масло рослинне - 2 ст. ложки",


        "Томатна паста - 1,5 ст. ложки",


        "Петрушка свіжа - за смаком",


        "Сіль, перець - за смаком",


        "Вода - 2,5 л"


      ],
      "recipe": [


        "1. Яловичину вимити, залити холодною водою і поставити на сильний вогонь. Після закипання води зменшити вогонь, зняти піну. Додати сіль за смаком і варити 40-50 хвилин під кришкою.",
        "2. Дістати реберця з готового бульйону, відокремити м'ясо від кістки і повернути його в бульйон.",
        "3. Цибулю і моркву нарізати невеликими кубиками. Обсмажити на рослинній олії до м'якості, потім додати томатну пасту, протушкувати кілька хвилин.",
        "4. Додати до овочів нарізані кубиками огірки і протушкувати до м'якості.",
        "5. Рис промити та відправити в бульйон. Варити кілька хвилин, потім додати нарізану кубиками картоплю і варити ще 10-12 хвилин.",


        "6. Додати смажені овочі до супу і варити ще кілька хвилин до готовності.",


        "7. Прикрасити свіжою петрушкою перед подачею. Приправити сіллю і перцем за смаком."
      ],
    },
    {
      "name": "Суп з грибами",
      "picture": "assets/images/van/grb.jpg",
      "cookingTime": 45,
      "ingredients": [
        '• Сушені гриби - 50 г',
        '• Печериці - 600 г',
        '• Цибуля ріпчаста - 400 г',
        '• Вершки молочні 20% - 50 мл',
        '• Молоко - 800 мл',
        '• Масло вершкове - 50 г',
        '• Сіль - за смаком',
      ],
      "recipe": [
        '1. Підготуйте сушені гриби, ретельно промийте.',
        '2. Намочіть гриби у холодній воді на 1-2 години.',
        '3. Після намочування гриби відкиньте на друкарці.',
        '4. Пересипайте гриби з цибулею в каструлю, залийте вершками з молоком.',
        '5. Доведіть до кипіння на середньому вогні, зменшіть його і варіть суп на маленькому вогні ще 15 хвилин, в процесі додавши трохи солі.',
      ],
    },

    {


        "name": "Суп із білих грибів з вершками",
      "picture": "assets/images/van/creamgrb.jpg",
        "cookingTime": 60,
        "ingredients": [
          "Білі гриби свіжі – 2 кг",
          "Оливкова олія – 1 ст.л.",
          "Вершкове масло – 200 г",
          "Цибуля ріпчаста – 2 шт.",
          "Морква – 1 шт.",
          "Борошно – 0,25 ст.",
          "Вино біле сухе – 1 ст.",
          "Вершки жирні – 1 ст.",
          "Кухонна сіль – за смаком",
          "Перець чорний мелений – за смаком",
          "Зелена цибуля – 1 г",
          "Петрушка – пучок",
          "Кмин – за смаком"
        ],
        "recipe": [
          "1. Свіжі гриби помити, почистити та порізати. Нагріти оливкову олію разом з 1 ст.л. вершкового масла на середньому вогні у великій сковорідці.",
          "2. Дрібно порізати цибулю та моркву і додати в сковорідку разом з грибами. Посипати кмином, сіллю і перцем. Смажити овочі та гриби протягом 15 хвилин, доки вони не стануть м'якими.",
          "3. Додати 6 стаканів холодної води, довести до кипіння, потім зменшити вогонь і варити 30 хвилин.",
          "4. У іншій каструлі розтопити залишок вершкового масла, додати борошно і смажити до золотистого кольору, помішуючи постійно.",
          "5. Додати біле сухе вино, варіти 1-2 хвилини, потім поступово додавати гарячий бульйон з грибів, постійно помішуючи, щоб уникнути утворення грудочок.",
          "6. Довести суп до кипіння, зменшити вогонь і варити ще 10 хвилин.",
          "7. Додати жирні вершки і сезонувати сіллю та перцем за смаком.",
          "8. Подавати гарячим, прикрасити нарізаною зеленою цибулею та петрушкою."
        ],
    },
    {
      "name": "Український борщ",
      "picture": "assets/images/products/borz.jpg",
      "cookingTime": 45,
      "ingredients": [
        "Свинина, яловичина - до 1 кг",
        "Морква - 1 шт",
        "Картопля - 2-3 шт",
        "Квасоля - 1 склянка",
        "Корінь петрушки, селера - за смаком",
        "Червоний буряк - 1-2 шт",
        "Червоний солодкий перець - 1 шт",
        "Часник - 2-3 зубчики",
        "Цибуля - 1 шт",
        "Капуста білокачанна - 0.5 головки",
        "Сіль, чорний перець, зелень, гострий перець, лавровий лист, зелень петрушки і кропу, сметана - за смаком",
        "Томатна паста - 2-3 ст. л"
      ],
      "recipe": [
        "1. Налити холодну воду в каструлю обсягом трохи більше половини, але не більше двох третин. Поставити на вогонь.",
        "2. Вимити м'ясо, нарізати на шматки по 40-50 грам, додати до води. Довести до кипіння, знімати піну.",
        "3. Додати лавровий лист, корінь петрушки і селера. Посолити, поперчити за смаком. Варити м'ясний бульйон мінімум годину, поки м'ясо не стане м'яким.",
        "4. Витягти з бульйону корінь петрушки і лавровий лист. Додати замочену квасоль і варити ще 20 хвилин, доки квасоля не стане трохи м'якшою.",
        "5. Додати нарізану моркву, цибулю і червоний перець. Варити ще 15 хвилин.",
        "6. Додати дрібно нарізаний часник і свіжий гострий перець, за смаком.",
        "7. Почистити і нарізати червоний буряк. Додати в киплячий борщ і варити ще 10 хвилин, доки буряк не стане м'яким.",
        "8. Додати нарізану картоплю і варити ще 15 хвилин або до того, як картопля буде готовою.",
        "9. Додати томатну пасту, солі і перцю за смаком. Варити ще 5 хвилин.",
        "10. Нарізати білокачанну капусту і додати в борщ. Варити ще 5 хвилин.",
        "11. Додати дрібно нарізану зелень петрушки і кропу. Приправити за смаком сіллю і перцем.",
        "12. Вимкнути вогонь і дати борщу настоятися до наступного ранку.",
        "13. Під час подачі подавати з сметаною.",
        "14. Насолоджуйтеся справжнім українським борщем!"
      ],
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Перша страва'),
      ),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return ListTile(
            contentPadding: EdgeInsets.all(8.0),
            title: Text(dish['name']),
            leading: Image.asset(
              dish['picture'],
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DishDetailScreen(dish: dish),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DishDetailScreen extends StatelessWidget {
  final Map<String, dynamic> dish;

  const DishDetailScreen({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dish['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(dish['picture']),
              SizedBox(height: 10.0),
              Text(
                'Час приготування: ${dish['cookingTime']} хвилин',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              const Text(
                'Інгредієнти:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildIngredientList(dish['ingredients']),
              SizedBox(height: 20.0),
              const Text(
                'Рецепт:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              _buildRecipeSteps(dish['recipe']),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIngredientList(List<String> ingredients) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ingredients.map((ingredient) => Text(ingredient)).toList(),
    );
  }

  Widget _buildRecipeSteps(List<String> steps) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.map((step) => Text(step)).toList(),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  final VoidCallback? onTap;

  const Category({
    Key? key,
    required this.imageLocation,
    required this.imageCaption,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: onTap,
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
