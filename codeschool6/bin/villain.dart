part of superheroes;

class Villain {
  String _alias;
  Villain(this._alias);
  sayHello() => print("I am a ${this} and my name is $_alias");
}