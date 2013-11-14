

void main() {
  runEx("1.1",ex1);
  runEx("1.2",ex2);
  runEx("1.3",ex3);
  runEx("1.4",ex4);
  runEx("1.5",ex5);
  runEx("1.6",ex6);
  runEx("1.7",ex7);
  runEx("1.8",ex8);
  runEx("1.9",ex9);
  runEx("1.10",ex10);
  runEx("1.11",ex11);
  runEx("1.12",ex12);
  runEx("1.13",ex13);
  runEx("1.14",ex14);
  runEx("1.15",ex15);
  runEx("1.16",ex16);
  runEx("1.17",ex17);
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

ex1() => print("Hello Super Dart");

ex2() => print("""Hello
Super
Dart""");

ex3() => print(911);

ex4() => print(911-356);

ex5() => print('Call ${911-356}-DARTMAN');

ex6() => print(555/2);

ex7() => print(555/2 == 277.5);

ex8() => print(false == 0);

ex9() => print(true == 0);

ex10() {
  var hero;
  print(hero);
}
ex11() {
  var hero = "Dartman";
  print(hero);
}

ex12() {
  var areaCode = 911-356;
  print(areaCode);
}

ex13() {
  // previously...
  var hero = "Dartman";
  var areaCode = 911-356;
  
  // new
  print('Dial $areaCode when you call $hero');
}


ex14() {
  // previously
  var hero = "Dartman";
  
  // new
  print(hero);
  hero = 555;
  print(hero);
}

ex15() {
  String hero = "Dartman";
  print(hero);
}

ex16() {
  // previously...
//  String hero = "Dartman";
//  
//  // new
//  hero = 555;
//  print(hero);
}

ex17() {
// previously...
  var hero = "Dartman"; // String hero
  double foo = 132.3; 
  // new
  hero = 555;
  print(hero.toUpperCase());
}