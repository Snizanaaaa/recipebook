import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Про нас', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(color: Colors.black
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Кожен рецепт у додатку 'Recipe book' обладнаний докладними інструкціями, переліком інгредієнтів та зображенням готової страви. Зручний пошук за назвою страви допоможе вам швидко знайти потрібний рецепт. Більше того, ви можете використовувати функцію обраного, щоб зберегти свої улюблені рецепти та легко знаходити їх пізніше.\n\nЗавдяки додатку 'Recipe book' ви зможете:\n\n• Отримати доступ до різноманітних рецептів для будь-якого смаку та випадку.\n• Шукати рецепти за категоріями: Перша страва, Друга страва,Veg -вегетеріанська страва , закуски, десерти, напої тощо.\n\nНаш додаток 'Recipe book' - це ваш надійний помічник у кулінарних пригодах.",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),],
          ),
        ),
      ),
    );
  }
}
