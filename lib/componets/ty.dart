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
      home: SecondCourseScreen(),
    );
  }
}

class SecondCourseScreen extends StatelessWidget {
  final List<Map<String, dynamic>> dishes = [
    {
      "name": "Хрустка скоринка та аромат часнику",
      "picture": "assets/images/ty/kar.jpg",
      "cookingTime": 25,
      "ingredients": [
        "500 г картоплі",
        "4-5 зубчиків часнику",
        "2-3 ст. л. соняшникової олії",
        "2-3 гілочки чебрецю або розмарину",
        "сіль і перець до смаку"
      ],
      "recipe": [
        "КРОК 1",
        "Відберіть 500 г картоплі однакового розміру та ретельно помийте. Шкірку не знімайте. Складіть у каструлю, залийте водою та відваріть до напівготовності. Це займе приблизно 15-20 хвилин. Потім дістаньте картоплю з каструлі та обсушіть паперовими рушниками.",
        "",
        "КРОК 2",
        "Розріжте кожну картоплину на 4 частини. У форму для запікання влийте 2-3 ст. л. соняшникової олії, розмажте по дну кулінарним пензликом та викладіть часточки картоплі в один шар.",
        "",
        "Наріжьте картоплю четвертинками",
        "",
        "КРОК 3",
        "Увімкніть духовку розігріватися до 210 градусів. Додайте до картоплі 4-5 зубчиків часнику. Можна їх не очищати, а просто приплюснути пласкою стороною леза ножа. Якщо хочете отримати більш насичений смак та аромат, тоді вичавіть його зверху на картоплю. Додайте сіль і мелений перець до смаку. Радимо використовувати сіль дрібного помелу, бо вона швидше тане.",
        "",
        "Добавте в форму до картоплі головку чесника",
        "",
        "КРОК 4",
        "Викладіть на картоплю 2-3 гілочки свіжого чебрецю. Якщо немає свіжого, сміливо використовуйте сухий. Запікайте за температури 210 градусів у режимі гриля або конвекції протягом 10-15 хвилин. Картопля має стати з рум’яною скоринкою. Якщо потрібно, збільште час приготування."
      ],
    },
    {
      "name": "Молода картопля з кропом і сметаною",
      "picture": "assets/images/ty/crip.jpg",
      "cookingTime": 35,
      "ingredients": [
        "700 г молодої картоплі",
        "4-6 гілочок кропу",
        "30 г вершкового масла",
        "100 г сметани",
        "½ ч. л. солі",
        "1-2 зубчики часнику (за бажанням)",
        "Зелена цибуля (за бажанням)",
        "Мелений чорний перець (за смаком)",
        "Білий густий йогурт (як заміна сметані)"
      ],
      "recipe": [
        "1. Почистьте 700 г молодої картоплі, зішкрібши тонку шкірку невеликим ножем або чистою металевою губкою.",
        "2. Викладіть картоплю в каструлю, залийте водою так, щоб вона повністю покрила коренеплоди, та варіть до готовності 25-30 хвилин у підсоленій воді (½ ч. л. солі).",
        "3. Коли картопля звариться, злийте всю воду. Викладіть картоплю в миску, додайте 30 г вершкового масла та 100 г сметани.",
        "4. Помийте та підсушіть 4-6 гілочок кропу, нашаткуйте зелень, додайте до картоплі зі сметаною та перемішайте.",
        "5. За бажанням, натріть 1-2 зубчики часнику та додайте їх до сметани для більш насиченого смаку.",
        "6. Додайте дрібно нарізану зелену цибулю для додаткового аромату та смаку.",
        "7. Приправте мелений чорний перець за смаком.",
        "8. Якщо не хочете використовувати сметану, її можна замінити білим густим йогуртом."
      ],
    },

    {
      "name": "Деруни в блендері",
      "picture": "assets/images/ty/drn.jpg",
      "cookingTime": 30,
      "ingredients": [
        "3-4 картоплини середнього розміру (близько 300 г)",
        "1 цибуля",
        "1 яйце",
        "1 ст. л. борошна",
        "сіль та перець до смаку",
        "5 ст. л. соняшникової олії для смаження",
        "сметана для подачі"
      ],
      "recipe": [
        "ДЕРУНИ В БЛЕНДЕРІ: ПОКРОКОВИЙ РЕЦЕПТ",
        "КРОК 1",
        "Очистьте 3-4 картоплини та цибулю. Поріжте овочі на часточки та перекладіть в чашу блендера.",
        "",
        "КРОК 2",
        "Додайте яйце та перебийте до однорідної маси. Перекладіть картопляно-цибулеву масу в миску, додайте 1 ст. л. борошна, посоліть та поперчіть до смаку та одразу починайте смажити деруни.",
        "",
        "КРОК 3",
        "Розігрійте пательню з соняшниковою олією та столовою ложкою викладайте картопляну масу. Смажте з обох сторін до появи рум’яної скоринки. Викладайте готові деруни на двошаровий паперовий рушник, аби увібралася зайва олія. Подавайте деруни зі сметаною."
      ],
    },
    {
      "name": "Гречка з тушонкою",
      "picture": "assets/images/ty/por.jpg",
      "cookingTime": 40,
      "ingredients": [
        "Тушонка – 300-500 гр.",
        "Гречка – 1,5 ст.",
        "Цибулина – 1 шт.",
        "Вода – 3 ст.",
        "Сіль – за смаком"
      ],
      "recipe": [
        "1. Викласти всі необхідні інгредієнти на стіл.",
        "2. Зняти жир з поверхні тушонки і розтопити в каструлі.",
        "3. Нарізати цибулю тонкими пір’ями та обсмажити в жирі 2-3 хвилини до світло-коричневого відтінку.",
        "4. Додати тушонку до обсмаженої цибулі.",
        "5. Додати промиту гречку до тушонки та цибулі, залити трьома склянками води.",
        "6. Довести до кипіння, зменшити вогонь та тушкувати під кришкою 20 хвилин.",
        "7. Гарячу страву настоювати під кришкою ще 10-15 хвилин, потім посолити за смаком.",
        "8. Сервірувати та починати трапезу. Смачного!"
      ],
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('Рецепти'),
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
              IngredientList(ingredients: dish['ingredients']),
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

  Widget _buildRecipeSteps(List<String> steps) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.map((step) => Text(step)).toList(),
    );
  }
}

class IngredientList extends StatefulWidget {
  final List<String> ingredients;

  const IngredientList({Key? key, required this.ingredients}) : super(key: key);

  @override
  _IngredientListState createState() => _IngredientListState();
}

class _IngredientListState extends State<IngredientList> {
  late List<bool> _checked;

  @override
  void initState() {
    super.initState();
    _checked = List<bool>.filled(widget.ingredients.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(widget.ingredients.length, (index) {
        return Row(
          children: [
            Checkbox(
              value: _checked[index],
              onChanged: (bool? value) {
                setState(() {
                  _checked[index] = value!;
                });
              },
            ),
            Expanded(child: Text(widget.ingredients[index])),
          ],
        );
      }),
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

