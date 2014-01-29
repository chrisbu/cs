void main() {
  runEx("5.1",ex1);
  runEx("5.2",ex2);
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

class KnownAs {
  String alias;
}

ch2eckHeroOrVillain(KnownAs character) =>  character.alias.contains("Dartman") ? "Hero" : "Villain";

checkHeroOrVillain(name) {
  if (name.contains('Dart')) {
    return 'Hero';
  }
  else {
    return 'Villain';
  } 
}

abstract class Character {
 String alias;
 static Map<String, Character> _characterMap = new Map<String, Character>();
 
 Character.makeCharacter(this.alias);
 
 factory Character(String alias) {
   if (Character._characterMap[alias] == null) {
     if (checkHeroOrVillain(alias) == "Hero") {
       Character._characterMap[alias] = new Hero(alias);
     } else {
       Character._characterMap[alias] = new Villain(alias);
     }     
   }
   
   return Character._characterMap[alias];
 }
 
 sayHello() {
   print("I am a ${this.runtimeType}, and my alias is $alias");
 }
}

class Hero extends Character with Flight, LaserEyes {
  Hero(alias) : super.makeCharacter(alias) {
    print("Creating a hero: $alias");    
  }
}

class Villain extends Character {
  Villain(alias) : super.makeCharacter(alias) {
    print("Creating a villain: $alias");
  }
}

class Flight {
  void fly() => print("${this.alias} is flying");
}

class LaserEyes {
  void meltWithLaser() => print("${this.alias} is activating laser eyes");
}

ex1() {
  var steve = new Character("Dartman");
  var dartman = new Character("Dartman");
  var joe = new Character("Dr Slow");
  steve.sayHello();
  dartman.sayHello();
  joe.sayHello();
  
  dartman.meltWithLaser();
  dartman.fly();
}


class Character1 {
  String alias = "";
}

class Hero1 extends Character1 implements KnownAs {
  sayHello() => print("I am an $this and my name is $alias");

  Hero1(alias) {
    this.alias = alias;
  }
}

ex2() {
  var steve = new Hero1("Dartman");
  steve.sayHello();
  print(steve is KnownAs);
  
}

