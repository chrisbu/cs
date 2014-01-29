library superheroes;

part 'villain.dart';

class Hero {
  String alias;
  Hero(this.alias);
  sayHello() => print("I am a ${this} and my name is $alias");
}

