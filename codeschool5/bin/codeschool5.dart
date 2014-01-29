void main() {
  runEx("5.1",ex1);
  runEx("5.2",ex2);
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

class Hero1 {
  
}

ex1() {
  var dartman = new Hero1();
  print(dartman);
}

class Hero2 {
  String _alias = "";
  bool hasCape = false;
  
  get alias => _alias;
  set alias(value) => _alias = value;
}


class Villain {
  String alias;
  Villain();
  static int heroCount = 0;
  static printHeroCount() => print(heroCount);
}

class Hero3 {
  String alias;
  static var heroCache = new Map();
  
  Hero3.makeHero(this.alias);
  
  factory Hero3(alias) {
    if (Hero3.heroCache[alias] == null) Hero3.heroCache[alias] = new Hero3.makeHero(alias); 
    return Hero3.heroCache[alias];
  }
}

ex2() {
  var steve = new Hero3("Dartman");
  var dartman = new Hero3("Dartman");
  print(steve == dartman);
}

class Hero4 {
   noSuchMethod(params) {
     
   }
}

ex3() {
  
}
}