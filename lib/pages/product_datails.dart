import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productDetailsName;
  final String productDetailsPicture;
  final int productDetailsCookingTime;

  const ProductDetails({
    Key? key,
    required this.productDetailsName,
    required this.productDetailsPicture,
    required this.productDetailsCookingTime,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _isFavorite = false;
  bool _showRecipe = false;
  final Map<String, bool> _ingredientChecked = {};

  void _toggleRecipeVisibility() {
    setState(() {
      _showRecipe = !_showRecipe;
    });
  }

  void _toggleIngredientChecked(String ingredient) {
    setState(() {
      _ingredientChecked[ingredient] = !(_ingredientChecked[ingredient] ?? false);
    });
  }

  Widget _buildIngredientList(List<String> ingredients) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ingredients
          .map(
            (ingredient) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 24.0,
              height: 24.0,
              child: Checkbox(
                value: _ingredientChecked[ingredient] ?? false,
                onChanged: (value) => _toggleIngredientChecked(ingredient),
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(child: Text(ingredient)),
          ],
        ),
      )
          .toList(),
    );
  }

  Widget _buildRecipe(String productName) {
    switch (productName) {
      case 'А-ЛЯ ЦЕЗАР':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Інгредієнти:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            _buildIngredientList([
              '• 150 г курячого філе',
              '• 150 г міксу салатного листя',
              '• 80 г томатів чері або 2 томати',
              '• 2 шматки білого хліба',
              '• 20 г сиру пармезан',
              '• 1-2 щіпки паприки',
              '• сіль за смаком',
              'Для соусу:',
              '• 100 г сметани 20% жирності',
              '• 5-6 консервованих анчоусів',
              '• 1 зубчик часнику (за бажанням)',
              '• 20 г петрушки',
              '• сіль та перець за смаком',
            ]),
            const SizedBox(height: 20.0),
            const Text(
              'Рецепт:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text('1. Підготуйте всі інгредієнти для приготування салату «Цезар». Якщо у вас заморожене куряче філе, покладіть його з морозилки в холодильник, щоб воно повністю розморозилося. Ще один варіант розморозки - складіть філе в пакет і опустіть в каструлю з холодною водою. Змінюйте воду раз на 40 хвилин. Духовку розігрійте до 180 градусів. Візьміть 150 г курячого філе, помийте, зачистіть від жиру та плівок і поріжте брусочками завтовшки не більше 5 мм.'),
            // ... (the rest of the recipe steps)
          ],
        );
      case 'БОРЩ З КАРАСІВ':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Інгредієнти:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            _buildIngredientList([
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
            ]),
            const SizedBox(height: 20.0),
            const Text(
              'Рецепт:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text('1. Почистьте від луски та нутрощів рибу. Помийте під проточною водою та обсушіть. Я використав 6 маленьких карасиків.'),
            Text('2. Посоліть рибини з обох боків та запаніруйте в борошні, в мене пішла приблизно 1 ст. л. борошна.'),
            Text('3. Розігрійте пательню з 2 ст. л. олії та добре обсмажте карасів з обох сторін до рум’яної скоринки. Перекладіть на паперові рушники, щоб всоталася зайва олія.'),
            Text('4. Очистьте 1 великий буряк, 1 середню цибулину, 4 середні картоплини та 1 середню морквину. Цибулю поріжте кубиком, а моркву з буряком натріть на тертці.'),
            Text('5. Цибулю обсмажте у глибокій пательні з 1 ст. л. олії до м’якості. Додайте моркву і буряк, влийте 200 мл домашнього томатного соку і тушкуйте все разом кілька хвилин. Потім додайте 150 мл води, доведіть до кипіння і тушкуйте на повільному вогні 10 хвилин.'),
            Text('6. Тим часом очищену картоплю поріжте невеликими кубиками, викладіть у каструлю і залийте 2 л води. Варіть на середньому вогні з дрібкою солі 20 хвилин.'),
            Text('7. Нашаткуйте 200 г свіжої капусти, додайте у каструлю та варіть ще протягом 10 хвилин.'),
            Text('8. Після цього додайте в каструлю овочі з пательні, 2 лаврових листи, 3 горошини духмяного перцю, сіль та перець до смаку. Залиште на повільному вогні на 5 хвилин.'),
            Text('9. Додайте до борщу смажених карасів та проваріть все разом протягом кількох хвилин. Подавайте борщ з карасиком у тарілці.'),
          ],
        );
      case 'Морозиво':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Інгредієнти:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            _buildIngredientList([
              '• Молоко - 150 г.',
              '• Вершки жирні - 500 г.',
              '• Яєчні жовтки - 3 шт.',
              '• Цукор - 150 г.',
              '• Ванілін або ванільний цукор за смаком.',
            ]),
            const SizedBox(height: 20.0),
            const Text(
              'Рецепт:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text('1. Молоко злегка підігріти, але не кипятити.'),
            Text('2. Жовтки збити з цукром за допомогою вінчика. Влити в жовткову суміш гаряче молоко і продовжити збивати, поки не розчиниться весь цукор.'),
            Text('3. Перелити масу в каструлю і, постійно помішуючи лопаткою, довести на середньому вогні до легкого загустіння..'),
            Text('4. Каструлю поставити в ємність з крижаною водою і остудити до кімнатної температури. Збити до кремоподібної консистенції холодні вершки прямо з холодильника. '),
            Text('5. Влити вершки молочно-яєчну суміш. Додати ваніль і перемішати до однорідності. .'),
            Text('6. Викласти масу в широку форму, накрити кришкою і поставити в морозилку на 4 години..'),
          ],

        );
      case 'Банановий коктель':
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Інгредієнти:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            _buildIngredientList([
              '• Банан - 1 шт.',
              '• Морозиво ТМ «Рудь» - 100 мл',
              '• Какао - 2 ч. л.',
              '• Ванільний цукор - 0,5 ч. л.',
              '• Молоко 2,5% ТМ «Рудь» - 300 мл',
            ]),
            const SizedBox(height: 20.0),
            const Text(
              'Рецепт:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text('1. Молоко помістити на декілька годин до морозильної камери.'),
            Text('2. Заморожене молоко подрібнити і збити у блендері.'),
            Text('3. Додати банан і ванільний цукор. Збити в блендері протягом 1,5 хвилин.'),
            Text('4. Додати морозиво ТМ «Рудь», какао і знову збити в блендері до однорідності.'),
            Text('5. Розлити у стакани і подавати.'),
          ],

        );

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productDetailsName),
      ),
      body: ListView(
        children: [
          Hero(
            tag: widget.productDetailsName,
            child: Image.asset(widget.productDetailsPicture),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productDetailsName,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Час приготування: ${widget.productDetailsCookingTime} хвилин',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _toggleRecipeVisibility,
                  child: Text(_showRecipe ? 'Приховати рецепт' : 'Показати рецепт'),
                ),
                if (_showRecipe) ...[
                  SizedBox(height: 20.0),
                  _buildRecipe(widget.productDetailsName),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}