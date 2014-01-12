void main() {
  runEx("2.1",ex1);
  runEx("2.2",ex2);
  runEx("2.3",ex3);
  runEx("2.4",ex4);
  runEx("2.5",ex5);
  runEx("2.6",ex6);   
  runEx("2.7",ex7);
  runEx("2.8",ex8);
  runEx("2.9",ex9);
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

ex1() {
  main() {
    print('Dartman');
  }
  
// needed to synthesise main
  main();
}

ex2() {
  checkGoodOrEvil(name) {
    if (name.contains('Dart')) {
      return 'Good';
    }
    else {
      return 'Evil';
    } 
  }
 
  // no code actually executes...
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
    var status = checkGoodOrEvil('Dartman');
    print(status);
  }
  
// needed to synthesise main
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
  main() {
    var status = checkGoodOrEvil('Dr Slow');
    print(status);
  }
  
  // needed to synthesise main
  main();
}

ex5() {
  String checkGoodOrEvil(name) {
    if (name.contains('Dart')) {
      return 'Good';
    }
    else {
      return 'Evil';
    } 
  }
  main() {
    var status = checkGoodOrEvil('Dartman');
    print(status);
  }
  
  // needed to synthesise main
  main();
}

ex6() {
  var status;
  String checkGoodOrEvil(name) => name.contains('Dart') ? 'Good' : 'Evil';
    
  main() {
    status = checkGoodOrEvil('Dartman');
    print(status);    
  }
  
  // needed to synthesise main
  main();
}

ex7() {
  try {
    main() {
     // print(status);
      //var status = 'Good';
    }
    
// needed to synthesise main
    main();
  } 
  catch (error) {
    print(error); 
  }
  
  
}

ex8() {
 var heroName;
 printTopLevelHeroName() => print('Top level $heroName');
 main() {
   heroName = 'Dartman';
   printTopLevelHeroName();
 }
 
// needed to synthesise main
 main();
}

ex9() {
  var heroName;
  printTopLevelHeroName() => print('Top level: $heroName');
  main() {
    var heroName = 'Dartman';
    print('Local: $heroName');
    printTopLevelHeroName();
  }
  
// needed to synthesise main
  main();
}

ex10() {
  var heroName = 'Dr Slow';

  printTopLevelHeroName() => print('Top level: $heroName');

  String checkGoodOrEvil(String heroName) => heroName.contains('Dart') ? 'Good' : 'Evil';

  main() {
    var heroName;
    heroName = 'Dartman';
    printTopLevelHeroName();
    print('Local: $heroName');
    var status = checkGoodOrEvil(heroName);
    print('$heroName is $status');
  }
  
// needed to synthesise main
  main();
}

const HERO_NAME = 'Dr Slow';

ex11() {
  printTopLevelHeroName() => print('Top level: $HERO_NAME');

  String checkGoodOrEvil(String heroName) => heroName.contains('Dart') ? 'Good' : 'Evil';

  main() {
    var heroName;
    heroName = 'Dartman';
    printTopLevelHeroName();
    print('Local: $heroName');
    var status = checkGoodOrEvil(heroName);
    print('$heroName is $status');
  }
  
// needed to synthesise main
  main();
}