void main() {
  runEx("3.1",ex1);
  runEx("3.2",ex2);
  runEx("3.3",ex3);
  runEx("3.4",ex4);
  runEx("3.5",ex5);
  runEx("3.6",ex6);
  runEx("3.7",ex7);
  runEx("3.8",ex8);
  runEx("3.9",ex9);
  
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

ex1() {
  main() {
    var heroes = ['Dartman','Dr Slow', 'Boy Dart'];
    print(heroes);
  }
  
  main();
}

ex2() {
  main() {
    var heroes = ['Dartman','Dr Slow', 'Boy Dart'];
    heroes[2] = 'Captain Dart';
    print(heroes[2]);
    print(heroes);
  }
  
  main();
}

ex3() {
  checkGoodOrEvil(name) {
    if (name.contains('Dart')) {
      return 'Good';
    }
    else {
      return 'Evil';
    } 
  } 
  
  main() {
      var heroes = ['Dartman','Dr Slow', 'Boy Dart'];
      heroes[2] = 'Captain Dart';
      print(heroes);
      print("${heroes[0]} is ${checkGoodOrEvil(heroes[0])}");
      print("${heroes[1]} is ${checkGoodOrEvil(heroes[1])}");
      print("${heroes[2]} is ${checkGoodOrEvil(heroes[2])}");
   }
   main();
 
}

ex4() {
  checkGoodOrEvil(name) {
    if (name.contains('Dart')) {
      return 'Good';
    }
    else {
      return 'Evil';
    } 
  } 
  
  var heroes = ['Dartman','Dr Slow', 'Boy Dart'];
  for (var hero in heroes) {
    print("$hero is ${checkGoodOrEvil(hero)}");
  }
    
}

ex5() {   
  print(['Dartman', 'Dr Slow', 'Boy Dart']..add("foo")..length); 
}


ex6() {
  var heroes = ['Dartman','Dr Slow', 'Boy Dart'];
  heroes.add("Captain Dart");
  print(heroes);
}

ex7() {
  var heroes = <String>['Dartman','Dr Slow', 'Boy Dart'];
  heroes.insert(1, "Captain Dart");
  heroes.removeAt(1);
  print(heroes);
}

ex8() {
  var villains = ['Dr Slow'];
  var heroes = <String>['Dartman', 'Boy Dart'];
  villains.add(555);
  print(villains);
  //heroes.add(555);  
}


ex9() {
  var heroes = [];
  var villains = new List(2);
  villains.remove("foo");

  print(heroes);
  print(villains);
}
